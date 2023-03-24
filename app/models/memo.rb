class Memo < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :kind
  belongs_to :taste
  belongs_to :aroma
  belongs_to :roast
  belongs_to :drink
end
