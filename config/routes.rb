Rails.application.routes.draw do
  resources :users

  get '/new' => 'users#new'
  post '/create' =>  'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/:user' => 'users#show'
  
  

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
