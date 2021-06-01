Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#hello'
  get '/welcome' => 'users#hello'
  get '/signup' => 'sessions#create'
  post '/login' => 'users#create'
  post '/logout' => 'users#destroy'
end

# root 'users#welcome'
# get '/welcome' => 'users#welcome'
# get '/signup' => 'users#signup'
# get '/login' => 'users#login'
# post '/login' => 'users#create'
# post '/signup' => '#sessions#create'
# post '/logout' => 'users#destroy'
