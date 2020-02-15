Rails.application.routes.draw do
  get "/signup" => 'users#new'
  post "/users" => 'users#create'
  get "/show" => 'users#show'
  get "/login" => 'sessions#new'
  post "/login" => "sessions#create"
  post "/logout" => "sessions#destroy"
end
