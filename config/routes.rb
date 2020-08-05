Rails.application.routes.draw do
  resources :users, only: [:create]
  resources :sessions, only: [:create]
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  get '/welcome', to: 'users#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
