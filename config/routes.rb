Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :users
resources :sessions, only: [:new, :create]

get '/login', to: 'sessions#new'
# get '/users/new', to: 'users#new'
# post '/users/new', to: 'users#create'

end
