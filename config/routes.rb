Rails.application.routes.draw do
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root to: 'static_pages#home'
  get 'search', to: 'accommodations#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :dashboards, only: [:index]

  resources :accommodations do
    resources :bookings
  end

  resources :bookings

end
