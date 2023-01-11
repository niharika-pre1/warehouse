Rails.application.routes.draw do
  
  
  get 'owners/index'
  devise_for :users
  root "home#index"
  
  resources :warehouses 
  get 'categories/index'
end