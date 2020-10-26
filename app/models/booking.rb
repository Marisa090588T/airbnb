class Booking < ApplicationRecord
  STATUS = ["Available", "Booked"]
  belongs_to :user
  belongs_to :accommodation
  validates :status, inclusion: { in: Booking::STATUS }
  validate  :date_not_before_today
  validate  :end_date_not_before_start_date

  def date_not_before_today
    errors.add(:start_date, "should be after today") if start_date < Date.today
  end

  def end_date_not_before_start_date
    errors.add(:end_date, "should be after start date") if end_date < start_date
  end
end
