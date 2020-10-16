Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  resources :accounts
  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get '/home' =>'welcome#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
