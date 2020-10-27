class FavoritesController < ApplicationController
  def index
    @favorites = current_user.favorites
  end

  def create
    @accommodation = Accommodation.find(params[:accommodation_id])
    @user = @accommodation.user
    current_user.favorite(@accommodation)
    respond_to do |format|
      format.html { redirect_to request.referrer || root_url }
      format.js
    end
    if @user != current_user
      @user.notifications.create(accommodation_id: @accommodation.id, variety: 1,
                                 from_user_id: current_user.id)
      @user.update_attribute(:notification, true)
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