Rails.application.routes.draw do
  resources :courses
  resources :teacher_profiles
  get 'errors/page404'
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
  get 'home/new'
  get 'home/contact'
  get 'home/about'
  get 'home/questionpapers'
  root 'home#index'
  
  match '/users/teachers',   to: 'users/teachers#index',   via: 'get'
  match '/users/teachers/:id',   to: 'users/teachers#show',   via: 'get'
  match '/users/teachers/:id' => 'users/teachers#destroy', :via => :delete, :as => :admin_destroy_teacher

resources :sessions, :only => [:create]
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
match '/users/students',   to: 'users/students#index',   via: 'get'
match '/users/students/:id',     to: 'users/students#show',       via: 'get'
match '/users/students/:id' => 'users/students#destroy', :via => :delete, :as => :admin_destroy_student
end
