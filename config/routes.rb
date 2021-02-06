Rails.application.routes.draw do
  resources :users, except: [:index]
  resources :sessions

  get "/homepage", to: "users#homepage", as: "homepage"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
