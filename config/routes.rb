Rails.application.routes.draw do
  get 'products/index'
  
  
  get 'owners/index'
  devise_for :users
  root "home#index"
  
  resources :warehouses do
  resources :categories
end
  get 'categories/index'
end