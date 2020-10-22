class Accommodation < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :price, presence: true
  validates :description, presence: true, length: { minimum: 10 }
end
