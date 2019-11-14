Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/users/home', to: 'users#home'
  resources :users, only: [:index, :new, :create]
  resources :sessions
  get 'logout', to: "sessions#destroy", as: "logout"
end
