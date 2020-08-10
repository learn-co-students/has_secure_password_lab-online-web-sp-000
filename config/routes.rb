Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'  
  get '/users' => 'users#index'  
  get '/users/new' => 'users#new'
  post '/users/create' => 'users#create'
end
