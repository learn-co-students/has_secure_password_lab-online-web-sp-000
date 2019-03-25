Rails.application.routes.draw do
  root 'users#welcome'
  
  get 'users/new'

  get 'users/create'

  get 'sessions/new'

  get 'sessions/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
