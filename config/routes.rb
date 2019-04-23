Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "signup" => "users#new"   ##new user
  post "signup" => "users#create"
  get "login" => "sessions#new"  ##new session
  post "login" => "sessions#create"
  get "welcome" => "users#index"
end
