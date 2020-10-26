class FavoritesController < ApplicationController
  def create
    @accommodation = Accommodation.find(params[:accommodation_id])
    @user = @accommodation.user
    current_user.favorite(@accommodation)
    respond_to do |format|
      format.html { redirect_to request.referrer || root_url }
      format.js
    end
  end

  def destroy
    @accommodation = Accommodation.find(params[:accommodation_id])
    current_user.favorites.find_by(accommodation_id: @accommodation.id).destroy
    respond_to do |format|
      format.html { redirect_to request.referrer || root_url }
      format.js
    end
  end
end
