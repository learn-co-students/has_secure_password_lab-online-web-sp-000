Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/login', to: 'sessions#new' #doesn't require view
  post '/login', to: 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get '/users/new', to: 'users#new'
  post '/users' => 'users#create'
  root to: 'welcome#home'

end
