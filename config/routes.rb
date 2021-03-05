Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:new, :create]

  get '/login', to: "sessions#login"
  post '/login', to: "sessions#create"

  get '/welcome', to: "welcome#homepage"
end
