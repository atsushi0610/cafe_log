class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @memos = current_user.memos.order("created_at DESC")
  end
end
