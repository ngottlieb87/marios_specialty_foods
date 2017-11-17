class Product < ApplicationRecord
  has_many :reviews
  validates :name, :presence => true
  validates :cost, :presence => true
  validates :country_origin, :presence => true


end
