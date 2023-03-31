class Memo < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  validates :title, :impression, :date, presence: true
end
