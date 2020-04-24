Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/signup', to: 'users#new'
  get '/login', to: 'users#login'
  post '/login', to: 'users#create'
  get '/index', to: 'users#index'

  post '/create', to: 'sessions#create'
end
