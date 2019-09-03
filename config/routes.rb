Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome/index'

  get 'login' => 'sessions#new'

  get 'signup' => 'users#new'

  post 'logout' => 'sessions#destroy'

  post 'signup' => 'users#create'

  post 'login' => 'sessions#create'
end
