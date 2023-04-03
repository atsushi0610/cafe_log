class Comment < ApplicationRecord
  belongs_to :memo
  belongs_to :user

  validates :comment, presence: true
end
