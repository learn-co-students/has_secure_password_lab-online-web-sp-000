Rails.application.routes.draw do
  root 'welcome#home'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  resources :users, only: [:new, :create]

#  get    '/signup',  to: 'users#new'
#  get    '/signup',  to: 'users#create'
#  get    '/login',   to: 'sessions#new'
#  get    '/show',   to: 'users#show'
#  post   '/login',   to: 'sessions#create'
#  post '/logout' => 'sessions#destroy'

end
