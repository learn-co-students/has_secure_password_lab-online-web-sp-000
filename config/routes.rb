Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/new', to: 'sessions#new'
  post '/new', to: 'sessions#create'
  get 'users/new', to: 'users#new'
  post 'users/new', to: 'users#create'
end
