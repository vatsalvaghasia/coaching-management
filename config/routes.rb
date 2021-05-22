Rails.application.routes.draw do
  devise_for :users
  resources :papers
  resources :months
  resources :years
  resources :categories
  
  #get 'home/index'
  get 'home/new'
  get 'home/signup'
  get 'home/contact'
  get 'home/login'
  get 'home/about'
  root 'home#index'

  resources :sessions, :only => [:create]
get 'signup' => 'users#new', :as => 'signup'
get 'login' => 'devise/sessions#new', :as => 'login'
get 'logout' => 'devise/sessions#destroy', :as => 'logout' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
