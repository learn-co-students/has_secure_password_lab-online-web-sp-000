Rails.application.routes.draw do
    get '/login', to: 'sessions#new' #doesn't require view
    post '/login', to: 'sessions#create'
    post '/logout' => 'sessions#destroy'
    get '/users/new', to: 'users#new'
    post '/users' => 'users#create'
    root to: 'welcome#home'

end
