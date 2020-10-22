class Accommodation < ApplicationRecord
  belongs_to :userheroku run rake db:reset
  default_scope -> { order(created_at: :desc) } 
  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :price, presence: true
  validates :description, presence: true, length: { minimum: 10 }
end
