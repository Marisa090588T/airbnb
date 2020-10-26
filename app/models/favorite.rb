class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :accommodation
  validates :user_id, presence: true
  validates :accommodation_id, presence: true
  default_scope -> { order(created_at: :desc) }
end
