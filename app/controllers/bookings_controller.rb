class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.where(user: current_user)
  end

  def show
  end

  def new
    @booking = Booking.new
    @accommodation = Accommodation.find(params[:accommodation_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @accommodation = Accommodation.find(params[:accommodation_id])
    @booking.accommodation = @accommodation
    @booking.user = current_user
    @booking.total_price = calculated_price
    @booking.status = "Booked"

    if @booking.save
      @accommodation = Accommodation.find(params[:accommodation_id])
      @accommodation.available = false
      @accommodation.save
      redirect_to booking_path(@booking), notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @accommodation = Accommodation.find(params[:accommodation_id])
    if @booking.update(booking_params)
      @booking.total_price = calculated_price
      @booking.save
      redirect_to @booking, notice: 'Booking was successfully updated.'
    else
      render :edit
    end
  end

  def calculated_price
   (@accommodation.price * (@booking.end_date - @booking.start_date).to_i)
  end

  def destroy
    # Below line 56-58 are seems not work.
    # What I want to do is: after booking destroy, accommodation.available is chanded to true.
    # As other user can book.
    # @accommodation = Accommodation.find(params[:accommodation_id])
    # @accommodation.available = true
    # @accommodation.save
    @booking.destroy
    redirect_to bookings_path, notice: 'Booking was successfully canceled.'
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:total_price, :start_date, :end_date, :status)
  end
end
