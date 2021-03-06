Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :vehicles
  get "my_vehicles", to: "vehicles#my_vehicles"
  get 'my_bookings', to: 'bookings#index'
  resources :bookings
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
