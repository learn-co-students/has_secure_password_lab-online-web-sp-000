Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show]
  post '/logout', to: 'users#destroy'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  # Alternatively, you can use the below:
  # get '/', to: 'users#new', as: 'user'
  # post '/', to: 'users#create'
  # get '/login', to: 'sessions#new'
  # post '/login', to: 'sessions#create'
  # get '/:user', to: 'users#show', as: 'homepage'

end
