Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sessions
  get 'sessions/create', to: 'sessons#create', as: 'login'
  resources :users

end
