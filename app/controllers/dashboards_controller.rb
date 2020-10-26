class DashboardsController < ApplicationController
  def index
    @accommodations = Accommodation.where(user: current_user)
    @bookings = Booking.where(user: current_user)
    @requests = Booking.all.select { |booking| booking.user == current_user }
  end
end
