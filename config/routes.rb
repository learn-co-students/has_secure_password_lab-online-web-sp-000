Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/login', to: 'users#login'
  post '/login', to: 'sessions#create'
  get '/homepage', to: 'welcome#homepage'
end
