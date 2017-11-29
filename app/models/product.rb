class Product < ApplicationRecord
  has_many :reviews
  validates :name, :presence => true
  validates :cost, :presence => true
  validates :country_origin, :presence => true

  scope :most_recent, -> { order(:created_at => :desc).limit(3)}
  scope :made_in_usa, -> { where(:country_origin => "USA")}
  scope :most_reviewed, -> { Product.select("products.name, products.id, products.cost, count(reviews.id) as reviews_count")
                            .joins(:reviews)
                            .group("products.id")
                            .order("reviews_count DESC")
                            .limit(1)}
end
