class AccommodationsController < ApplicationController
  def index
    @accommodations = Accommodation.all
  end

  def show
    @accommodation = Accommodation.find(params[:id])
    @user = @accommodation.user
    # @booking = Booking.new
  end

  def new
    @accommodation = Accommodation.new
    @user = @accommodation.user
  end

  def create
    @accommodation = Accommodation.new(accommodation_params)
    @user = current_user
    @accommodation.user = @user
    if @accommodation.save
      redirect_to accommodation_path(@accommodation)
    else
      render :new
    end
  end

  def edit
    @accommodation = Accommodation.find(params[:id])
  end

  def update
    @accommodation = Accommodation.find(params[:id])
    @accommodation.update(accommodation_params)
    redirect_to accommodation_path(@accommodation)
  end

  def destroy
    @accommodation = Accommodation.find(params[:id])
    @accommodation.destroy
    respond_to do |format|
      format.html { redirect_to @accommodation, notice: 'Accommodation was successfully deleted!' }
      format.json { head :no_content }
    end
  end

  private

  def accommodation_params
    params.require(:accommodation).permit(:name, :description, :price, :location, :available, :property_type)
  end
end