class Snkshop < ApplicationRecord
  validates :sku, presence: true, uniqueness: true
  validates :name, presence: true
  validates :description, presence: true
  validates :size, presence: true, uniqueness: true
  monetize :price_cents
end
