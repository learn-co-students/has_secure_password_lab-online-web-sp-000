Rails.application.routes.draw do

  post 'login', to: 'sessions#create'
  post 'users', to: "users#create"

  get 'users/new', to: "users#new"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
