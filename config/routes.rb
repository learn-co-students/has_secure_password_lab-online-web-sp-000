Rails.application.routes.draw do

  get '/signup' => 'users#new'
  post '/users/create'
  post '/signup' => 'sessions#create'

  get '/login' => 'users#login'
  post '/login' => 'sessions#create'

  get '/users/homepage'
  post 'sessions/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
