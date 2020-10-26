class Accommodation < ApplicationRecord
  TYPES = ["Family", "Business", "Single", "other"]
  belongs_to :user
  has_one_attached :photo
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_one :booking
  default_scope -> { order(created_at: :desc) }
  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :price, presence: true
  validates :description, presence: true, length: { minimum: 3 }

  def accommodation_comment(accommodation_id)
    Comment.where("accommodation_id = ?", accommodation_id)
  end
  # geocoded_by :location
  # after_validation :geocode, if: :location_changed?
end
