require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @comment = FactoryBot.build(:comment)
  end

  describe 'コメントの保存' do
    context 'コメントが投稿できる場合' do
      it 'コメントが入力されていれば投稿できる' do
        expect(@comment).to be_valid
      end
    end
    context 'commentが投稿できない場合' do
      it 'コメントが空では投稿できない' do
        @comment.comment = ''
        @comment.valid?
        expect(@comment.errors.full_messages).to include("コメントを入力してください")
      end
      it 'ユーザーが紐づいていないと投稿できない' do
        @comment.user = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include('Userを入力してください')
      end
      it 'コーヒーメモが紐づいていないと投稿できない' do
        @comment.memo = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include('Memoを入力してください')
      end
    end
  end
end
