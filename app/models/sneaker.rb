class Sneaker < ApplicationRecord
  validates :name,  presence: true
  validates :description,presence: true
  validates :brand,presence: true
  validates :price_per_sneaker,presence: true
  validates :size, presence: true
  mount_uploader :photo, PhotoUploader

  include PgSearch
  pg_search_scope :global_search,
      against: [ :name ],
      using: {
        tsearch: { prefix: true }
      }
end
