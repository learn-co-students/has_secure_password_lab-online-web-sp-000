Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create, :show]
  
  get '/new', to: "sessions#new"
  post '/new', to: "sessions#create"
end
