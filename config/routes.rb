Rails.application.routes.draw do
  resources :users
  get "/login" => "sessions#create"
  get "/home" => "welcome#home"
end
