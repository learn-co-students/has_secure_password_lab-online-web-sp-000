Rails.application.routes.draw do
  get 'sessions/create'

  get 'users/new'

  get 'users/create'

  get 'welcome/home'

  post 'sessions/create'

  post '/welcome/home'

  post '/users/new'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
