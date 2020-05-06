Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  resources :users, only: [:new, :create]
end
