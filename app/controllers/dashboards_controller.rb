class DashboardsController < ApplicationController
  def index
    @accommodations = Accommodation.all
    @bookings = Booking.where(user: current_user)
    @requests = Booking.all.select { |booking| booking.accommodation.user == current_user }
  end
end
