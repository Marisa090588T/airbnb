class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :search

  def search
    @search_word = params[:q][:name_cont] if params[:q]
    @q = Accommodation.search(search_params)
    @accommodation = @q.result(distinct: true)
  end

  private

  def search_params
  end
end
