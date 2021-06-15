Rails.application.routes.draw do
  namespace :users do
    get 'students/index'
    resources :students, only: [:index, :show]
  end
  namespace :users do
    get 'teachers/index'
  end
  get 'users/teacher'
  get 'users/index'
  devise_for :teachers, controllers: {
        sessions: 'teachers/sessions'
      }
  devise_for :students, controllers: {
        sessions: 'students/sessions'
      }


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
  
  match '/users/teachers',   to: 'users/teachers#index',   via: 'get'
  match '/users/teachers/edit',   to: 'users/teachers#edit',   via: 'get'
resources :sessions, :only => [:create]
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# match '/users',   to: 'users#index',   via: 'get'
# match '/users/:id',     to: 'users#show', via: 'get'
match '/users/students',   to: 'users/students#index',   via: 'get'
match '/users/students/:id',     to: 'users/students#show',       via: 'get'
end
