Rails.application.routes.draw do
  # get 'user/new'
  # get 'user/create'
  resources :users
  resources :sessions

  # get '/' => 'users#homepage'
  # resources :users, :only => [:new, :create]

  # get '/login' => 'sessions#new'
  # post '/login' => 'sessions#create'
end
