Rails.application.routes.draw do
  resources :sessions

  resources :users

  root 'welcome#home'
end
