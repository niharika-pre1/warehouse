Rails.application.routes.draw do
  get 'warehouse_items/index'
  root "home#index"
  get 'owners/index'
  
  resources :warehouse_items, shallow: true do
  resources :categories do
  resources :products
  end
  end
  end