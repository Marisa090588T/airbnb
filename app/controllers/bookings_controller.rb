class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
    @accommodation = Accommodation.find(params[:accommodation_id])
  end

  def create
    @accommodation = Accommodation.find(params[:accommodation_id])
    @booking = Booking.new(booking_params)
    @booking.accommodation = @accommodation
    @booking.user = current_user
    @booking.total_price = calculated_price
    @booking.status = "Awaiting"

    if @booking.save
      redirect_to accommodation_booking_path(@accommodation, @booking), notice: 'Booking request was created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    # @accommodation = Accommodation.find(params[:accommodation_id])
    # @booking.accommodation = @accommodation
    # @booking.total_price = calculated_price
    if @booking.update!(booking_params)
      redirect_to accommodation_booking_path, notice: 'Booking was successfully updated.'
    else
      render :edit
    end
  end

  def calculated_price
   (@accommodation.price * (@booking.end_date - @booking.start_date).to_i)
  end


  def destroy
    @booking.destroy
    redirect_to dashboards_path, notice: 'Booking was successfully deleted.'
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:total_price, :start_date, :end_date, :status)
  end
end
