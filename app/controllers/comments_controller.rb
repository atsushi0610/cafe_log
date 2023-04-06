class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to memo_path(comment.memo.id)
  end

  def destroy
    @memo = Memo.find(params[:memo_id])
    comment = @memo.comments.find(params[:id])
    if current_user.id == comment.user.id
      comment.destroy
    redirect_to memo_path(comment.memo.id)
    else
      render "memos/show"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id, memo_id: params[:memo_id])
  end
end
