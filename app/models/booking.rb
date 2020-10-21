class Booking < ApplicationRecord
  STATUS = ["Awaiting", "Booked", "Declined"]
  belongs_to :user
  belongs_to :accommodation
  validates :status, inclusion: { in: Booking::STATUS }
end
