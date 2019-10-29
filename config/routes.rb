Rails.application.routes.draw do
  resources :users, only: [:new, :create]

  get '/home', to: 'sessions#show'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


#   Prefix Verb URI Pattern          Controller#Action
#   users POST /users(.:format)     users#create
#   new_user GET  /users/new(.:format) users#new
#   user GET  /users/:id(.:format) users#show