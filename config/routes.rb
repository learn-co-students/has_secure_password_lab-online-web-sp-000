Rails.application.routes.draw do
  get 'users/index'

  get 'users/signup', to: 'users#new'
  post 'users/create'

  get 'users/login'
  
  post 'sessions/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
