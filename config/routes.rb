Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :vehicles
   get "my_vehicles", to: "vehicles#my_vehicles"
end
