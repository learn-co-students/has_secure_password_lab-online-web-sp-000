Rails.application.routes.draw do
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  resources :users, only: [:new, :create]
  root 'users#show'
end
