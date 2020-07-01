Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create]
  get "/users/home", to: "users#home"
end
