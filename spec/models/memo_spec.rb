require 'rails_helper'

RSpec.describe Memo, type: :model do
  before do
    @memo = FactoryBot.build(:memo)
  end

  describe 'コーヒーメモの保存' do
    context 'コーヒーメモが投稿できる場合' do
      it '画像、タイトル、日付、感想が全て揃っていれば投稿できる' do
        expect(@memo).to be_valid
      end
    end
    context 'ツイートが投稿できない場合' do
      it '画像が空では投稿できない' do
        @memo.image = nil
        @memo.valid?
        expect(@memo.errors.full_messages).to include("Image can't be blank")
      end
      it 'タイトルが空では投稿できない' do
        @memo.title = ''
        @memo.valid?
        expect(@memo.errors.full_messages).to include("Title can't be blank")
      end
      it '日付が空では投稿できない' do
        @memo.date = ''
        @memo.valid?
        expect(@memo.errors.full_messages).to include("Date can't be blank")
      end
      it '感想が空では投稿できない' do
        @memo.impression = ''
        @memo.valid?
        expect(@memo.errors.full_messages).to include("Impression can't be blank")
      end     
      it 'ユーザーが紐付いていなければ投稿できない' do
        @memo.user = nil
        binding.pry
        @memo.valid?
        expect(@memo.errors.full_messages).to include('User must exist')
      end
    end
  end
end
