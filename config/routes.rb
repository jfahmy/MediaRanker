Rails.application.routes.draw do
  root 'works#index'

  post 'sessions/login', to: 'sessions#login', as: 'login'
  get 'sessions/login', to: 'sessions#new'
  delete 'sessions/destroy', to: 'sessions#destroy', as: 'logout'

  get 'works/main', to: 'works#main', as: 'home'

  resources :works do
    resources :votes, only: [:create]
  end
  #need to use except for the user routes you're not using
  resources :users

end
