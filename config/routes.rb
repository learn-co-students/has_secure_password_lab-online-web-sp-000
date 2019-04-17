Rails.application.routes.draw do

    get '/home', to: 'welcome#new'

    get '/signup', to: 'users#new'
    post '/signup', to: 'users#create'

    get '/login', to: 'sessions#new'
    post '/login', to: 'sessions#create'
    post '/logout', to: 'sessions#destroy'


end
