Rails.application.routes.draw do
  get 'products/index'
  get 'owners/index'
  devise_for :users
  root "home#index"
  
  resources :warehouses, shallow: true do
  resources :categories do
  resources :products
  end
  end
  end