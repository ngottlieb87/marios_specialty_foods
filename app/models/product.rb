class Product < ApplicationRecord
  has_many :reviews
  validates :name, :presence => true
  validates :cost, :presence => true
  validates :country_origin, :presence => true

  scope :most_reviews, -> {(
    select("count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count DESC")
    .limit(5)
    )}
end
