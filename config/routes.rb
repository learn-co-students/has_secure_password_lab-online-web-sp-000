Rails.application.routes.draw do
  get '/login', to: 'sessions#new'

  post '/create', to: 'sessions#create'

  get 'users/new'

  post 'users/new', to: 'users#create'

  get 'users/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
