class Comment < ApplicationRecord
  belongs_to :accommodation
  validates :user_id, presence: true
  validates :accommodation_id, presence: true
  validates :content, presence: true, length: { maximum: 50 }
end
