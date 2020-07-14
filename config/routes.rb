Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/users', to: 'users#new'
  post '/users', to: 'users#create'
  
  get '/', to: 'sessions#new'
  post '/', to: 'sessions#create'

  post '/logout', to: 'sessions#destroy'
end
