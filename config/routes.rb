Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:new, :create]
  post '/create', to: 'sessions#create'
  get '/users/home', to: 'users#home'
end