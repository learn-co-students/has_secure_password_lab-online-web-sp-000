Rails.application.routes.draw do
  resources :sessions
  get 'sessions/create', to: 'sessons#create', as: 'login'
  resources :users
end
