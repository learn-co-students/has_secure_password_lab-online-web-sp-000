Rails.application.routes.draw do



  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create', as: "post_login"

  resources :users, only: [:new, :create, :index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
