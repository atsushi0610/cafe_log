class Drink < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'ブラック' },
    { id: 3, name: 'ミルク・シュガー' },
    { id: 4, name: 'カフェラテ' },
    { id: 5, name: 'エスプレッソ' },
    { id: 6, name: 'アイスコーヒー' },
    { id: 7, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :memos
  end