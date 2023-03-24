class Roast < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '浅煎り' },
    { id: 3, name: '中煎り' },
    { id: 4, name: '深煎り' }
  ]

  include ActiveHash::Associations
  has_many :memos
  end