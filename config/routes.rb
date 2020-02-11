Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#homepage'
  resources :users, only: [:new, :create]
  resources :sessions, only: [:create]
end
