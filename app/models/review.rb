class Review < ApplicationRecord
  belongs_to :product
  validates :author, :presence => true
  validates :content, :presence => true
  validates :content, length: { minimum: 50, maximum: 250 }
  validates :rating, :presence => true
  validates :rating, inclusion: { in: 1..5 }
  validates :product_id, :presence => true
end
