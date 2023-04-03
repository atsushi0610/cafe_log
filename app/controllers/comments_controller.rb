class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to "/memos/#{comment.memo.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id, memo_id: params[:memo_id])
  end
end
