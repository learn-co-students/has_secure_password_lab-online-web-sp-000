Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
post '/login' => 'sessions#destroy'

resources :users, only: [:new, :create]

root 'welcome#home'
end
