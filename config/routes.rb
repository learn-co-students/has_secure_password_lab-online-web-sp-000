Rails.application.routes.draw do
  resources :users

  get '/login', to: 'sessions#new'
  post '/show', to: 'sessions#create'
  get '/welcome', to: 'welcome#welcomepage'
end
