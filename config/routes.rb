Rails.application.routes.draw do

  get '/new' => 'users#new'
  post '/create' => 'users#create'
  # post '/logout' => 'sessions#destroy'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
