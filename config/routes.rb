Rails.application.routes.draw do

  get "login", to: "sessions#new"

  post "login", to: "sessions#create"

  post "logout", to: "sessions#destroy"


  get "new", to: "users#new"

  post "users", to: "users#create"

end
