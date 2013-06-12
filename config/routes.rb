Cookbook::Application.routes.draw do
  resources :comments
  resources :categories
  resources :steps
  resources :ingredients
  resources :recipes
  root :to => 'recipes#index'
end






