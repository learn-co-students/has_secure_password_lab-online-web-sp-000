Rails.application.routes.draw do


  root 'application#hello'
  get '/users/new' => 'users#new'
  post '/users' => 'users#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/users/homepage' => 'welcome_controller#show'
  post '/logout' => 'sessions#destroy'


end
