Rails.application.routes.draw do
  get '/users/home', to: 'users#home'
  resources :users, only: [:index, :new, :create]
  resources :sessions
  get 'logout', to: "sessions#destroy", as: "logout"
end
