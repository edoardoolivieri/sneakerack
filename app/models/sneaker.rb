class Sneaker < ApplicationRecord
  belongs_to :user
  validates :name,  presence: true
  validates :description,presence: true
  validates :brand,presence: true
  validates :price_per_sneaker,presence: true
  validates :size, presence: true
  validates :link, presence: true, allow_blank: true
  mount_uploader :photo, PhotoUploader
  searchkick
end
