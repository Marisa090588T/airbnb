class Accommodation < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  default_scope -> { order(created_at: :desc) }
  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :price, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  geocoded_by :location
  after_validation :geocode, if: :location_changed?
end
