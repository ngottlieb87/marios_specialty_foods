class Review < ApplicationRecord
  belongs_to :product
  validates :author, :presence => true
  validates :author, :uniqueness => true
  validates :content, :presence => true
  validates :rating, :presence => true
  validates :rating, :inclusion => { :in => 1..5 }
  validates :product_id, :presence => true
end
