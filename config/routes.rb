Rails.application.routes.draw do
  
  resources :users
  resources :welcome, only: [:show]
  resources :sessions, only:[:new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
