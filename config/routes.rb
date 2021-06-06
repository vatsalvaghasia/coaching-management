Rails.application.routes.draw do
  resources :teachers
  devise_for :users
resources :users, :only =>[:show,:update]
  resources :papers
  resources :months
  resources :years
  resources :categories
  
  #get 'home/index'
  get 'home/courses'
  get 'home/new'
  get 'home/signup'
  get 'home/contact'
  get 'home/login'
  get 'home/about'
  #get 'home/admin'
  root 'home#index'

  resources :sessions, :only => [:create]
get 'signup' => 'users#new', :as => 'signup'
get 'login' => 'devise/sessions#new', :as => 'login'
get 'logout' => 'devise/sessions#destroy', :as => 'logout' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
match '/users',   to: 'users#index',   via: 'get'
match '/users/:id',     to: 'users#show', via: 'get'
match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user

end
