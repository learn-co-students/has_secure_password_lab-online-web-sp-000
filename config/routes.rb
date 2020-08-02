Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # post '/login' => 'user#create'
  # resources :users, only: [:new, :create]
  # get '/login' => 'sessions#new'
  # post '/login' => 'users#new'

  get 'users/new'
  post 'users/create'

  post 'sessions/create'
end
