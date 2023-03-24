class Aroma < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'スモーキー' },
    { id: 3, name: 'ナッティー' },
    { id: 4, name: 'フルーティ' },
    { id: 5, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :memos
  end