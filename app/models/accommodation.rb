class Accommodation < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :favorites, dependent: :destroy
  default_scope -> { order(created_at: :desc) }
  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :price, presence: true
  validates :description, presence: true, length: { minimum: 10 }
end
