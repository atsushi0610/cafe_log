class Memo < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :kind
  belongs_to :taste
  belongs_to :aroma
  belongs_to :roast
  belongs_to :drink

  validates :title, :impression, :date, presence: true

  validates :kind_id, numericality: { other_than: 1 } 
  validates :taste_id, numericality: { other_than: 1 } 
  validates :aroma_id, numericality: { other_than: 1 } 
  validates :roast_id, numericality: { other_than: 1 } 
  validates :drink_id, numericality: { other_than: 1 } 

end
