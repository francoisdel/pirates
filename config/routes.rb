Rails.application.routes.draw do
  devise_for :users
  root to: "landing#landing"
  get 'landing', to: 'landing#landing'
  get '/bookings/quote/:boat_id/:start_date/:end_date', to: 'bookings#quote'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :boats do
    resources :bookings, only: %i[new create]
  end

  resources :bookings, except: %i[new create]
  resources :landing

end
