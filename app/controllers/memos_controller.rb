class MemosController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_memo, only: [:edit, :show, :update]
  
  def index
    @memos = Memo.all.order("created_at DESC")
  end

  def new
    @memo = Memo.new
  end

  def create
    @memo = Memo.new(memo_params)
    if @memo.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @comment = Comment.new
    @comments = @memo.comments.includes(:user)
  end

  def edit
    unless current_user.id == @memo.user_id
      redirect_to root_path
    end
  end

  def update
    if @memo.update(memo_params)
      redirect_to memo_path(@memo.id)
    else
      render :edit
    end
  end

  def destroy
    memo = Memo.find(params[:id])
    if current_user.id == memo.user_id
      memo.destroy
      redirect_to root_path
    end
  end

  private
  def memo_params
    params.require(:memo).permit(:title, :date, :impression, :image).merge(user_id: current_user.id)
  end

  def set_memo
    @memo = Memo.find(params[:id])
  end
end
