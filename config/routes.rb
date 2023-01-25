Rails.application.routes.draw do
  devise_for :users
  root to: "pages#landing"
  get 'landing', to: 'landing#landing'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :boats do
    resources :bookings, only: %i[new create]
  end

  resources :bookings, except: %i[new create]
  resources :landing

end
