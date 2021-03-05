Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :vehicles
  get "my_vehicles", to: "vehicles#my_vehicles"
  resources :bookings, only: [:index, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
