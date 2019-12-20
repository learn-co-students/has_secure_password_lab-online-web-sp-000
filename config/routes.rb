Rails.application.routes.draw do
  root 'users#home'

get '/new' => 'users#new'
post '/signup' => 'users#create'
get '/login' => 'users#login'
post '/login' => 'sessions#create'
post '/destroy' => 'users#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
