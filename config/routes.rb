Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#welcome'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get '/welcome' => 'users#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
end

# root 'users#welcome'
# get '/welcome' => 'users#welcome'
# get '/signup' => 'users#signup'
# get '/login' => 'users#login'
# post '/login' => 'users#create'
# post '/signup' => '#sessions#create'
# post '/logout' => 'users#destroy'
