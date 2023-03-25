class Memo < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :kind
  belongs_to :taste
  belongs_to :aroma
  belongs_to :roast
  belongs_to :drink
  has_one_attached :image

  validates :title, :impression, :date, presence: true

  validates :kind_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :taste_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :aroma_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :roast_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :drink_id, numericality: { other_than: 1 , message: "can't be blank"}

end
