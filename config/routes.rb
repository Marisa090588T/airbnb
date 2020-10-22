Rails.application.routes.draw do
  devise_for :users
  root to: 'static_pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :dashboards, only: [:index]

  resources :accommodations do
    resources :bookings
  end

  resources :bookings
end
