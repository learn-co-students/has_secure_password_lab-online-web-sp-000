Rails.application.routes.draw do
  post 'sessions/create'

  get 'users/new'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
