Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  get 'about', to: 'about#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :boats do
    resources :bookings, only: %i[new create]
  end

  resources :bookings, except: %i[new create]
end
