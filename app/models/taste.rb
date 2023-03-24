class Taste < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'キレがある' },
    { id: 3, name: 'コクがある' },
    { id: 4, name: 'すっきり' },
    { id: 5, name: 'まろやか' }
  ]

  include ActiveHash::Associations
  has_many :memos
  end