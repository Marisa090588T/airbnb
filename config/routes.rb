Rails.application.routes.draw do
  resources :notifications, only: :index

  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root to: 'static_pages#home'
  get 'search', to: 'accommodations#search'
  resources :dashboards, only: [:index]

  resources :accommodations do
    resources :bookings
  end

  get :favorites, to: 'favorites#index'
  post   "favorites/:accommodation_id/create"  => "favorites#create"
  delete "favorites/:accommodation_id/destroy" => "favorites#destroy"

  resources :comments, only: [:create, :destroy]

  resources :bookings
end
