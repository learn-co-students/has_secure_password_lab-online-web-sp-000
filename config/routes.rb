Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Users
  get 'homepage', to: 'users#homepage'
  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'
  # Sessions
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
end
