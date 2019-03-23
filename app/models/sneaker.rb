class Sneaker < ApplicationRecord
  validates :name,  presence: true
  validates :description,presence: true
  validates :brand,presence: true
  validates :price_per_sneaker,presence: true
  validates :size, presence: true
end
