Rails.application.routes.draw do
  resources :papers
  resources :months
  resources :years
  resources :categories
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  resources :users
  #get 'home/index'
  get 'home/new'
  get 'home/signup'
  get 'home/contact'
  get 'home/login'
  get 'home/about'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
