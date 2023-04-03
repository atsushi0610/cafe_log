class Memo < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  has_many :comments
  
  validates :title, :impression, :date, :image, presence: true
end
