Rails.application.routes.draw do

  root 'users#new'
  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/welcome' => 'welcomes#welcome'

  resources :users, only: [:show,:new,:create]
end
