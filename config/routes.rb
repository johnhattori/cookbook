Cookbook::Application.routes.draw do
  get "sessions/new"

  get "sessions/create"

  get "sessions/destroy"

  resources :sessions, :only => [:new, :create]
  match "logout" => "sessions#destroy", :as => "logout"
  match "login" => "sessions#new", :as => "login"
  resources :users


  resources :comments
  resources :categories
  resources :steps
  resources :ingredients
  resources :recipes
  root :to => 'recipes#index'
end






