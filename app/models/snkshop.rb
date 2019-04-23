class Snkshop < ApplicationRecord
  validates :sku, presence: true, uniqueness: true
  validates :name, presence: true
end
