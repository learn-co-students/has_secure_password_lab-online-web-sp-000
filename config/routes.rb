Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get  '/signup' => 'users#new'
    post '/signup', to: 'users#create'

    get  '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    
    delete '/logout' => 'sessions#destroy'
    get '/welcome' => 'welcome#show'
 
end
