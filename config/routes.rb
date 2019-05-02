Rails.application.routes.draw do
	get 'sessions/new'
	get 'sessions/create'

  get 'users/new'

  get 'users/create'

  get 'users/login'

  get 'users/welcome'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
