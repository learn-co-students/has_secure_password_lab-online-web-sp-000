Rails.application.routes.draw do
  get '/signup', to: "users#new"
  post '/signup', to: "users#create"
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create", as: "logged_in"
  get '/home', to: "users#home"
end
