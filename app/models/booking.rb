class Booking < ApplicationRecord
  STATUS = ["Available", "Booked"]
  belongs_to :user
  belongs_to :accommodation
  validates :status, inclusion: { in: Booking::STATUS }
end
