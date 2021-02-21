Rails.application.routes.draw do
  root 'users#login'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  resources :users, only: [ :new, :create ]
  resources :sessions
  resources :welcome

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
