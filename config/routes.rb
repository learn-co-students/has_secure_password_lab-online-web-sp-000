Rails.application.routes.draw do
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  resources :users, only: [:new, :create]
  root 'users#show'

  #  resources :sessions only: [:new, :create] as: '/login'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
