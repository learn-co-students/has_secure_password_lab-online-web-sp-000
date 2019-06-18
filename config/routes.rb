Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'sessions/create', to: 'sessions#create'
  post 'users/create', to: 'users#create'
  get 'users/new', to: 'users#new'
end
