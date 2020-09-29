Rails.application.routes.draw do
  # resources :users
  resources :users, only: [:show, :new, :create]
  # resources :session, only: [:new, :create, :destroy]


  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout' => 'sessions#destroy'


  # Prefix    Verb  URI Pattern         Controller#Action
  # ------    ----- -----------------   ------------------
  # users     POST /users(.:format)     users#create
  # new_user  GET  /users/new(.:format) users#new
  # user      GET  /users/:id(.:format) users#show
  # login     GET  /login(.:format)     sessions#new
  #           POST /login(.:format)     sessions#create
  # logout    POST /logout(.:format)    sessions#destroy
  
end
