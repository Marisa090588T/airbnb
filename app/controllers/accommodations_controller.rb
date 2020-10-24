class AccommodationsController < ApplicationController
  before_action :search
  def index
    @accommodations = Accommodation.all
    @markers = @accommodations.geocoded.map do |accommodation|
      {
        lat: accommodation.latitude,
        lng: accommodation.longitude,
        # infoWindow: render_to_string(partial: "infowindow", locals: { accommodation: accommodation }),
        # image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }  
    end

    if user_signed_in?
      @q = Accommodation.ransack(params[:q])
      @accommodations = @q.result(distinct: true)
    end
  end

  def search
    @search_word = params[:q][:location_cont] if params[:q]
    @q = Accommodation.search(search_params)
    @accommodation = @q.result(distinct: true)
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
    params.require(:accommodation).permit(:name, :description, :price, :location, :available, :property_type, :photo)
  end

  def search_params
  end
end
