Rails.application.routes.draw do
  get 'welcome/index'
  devise_for :shopkeepers
  devise_for :suppliers
  devise_for :warehouse_owners
  get 'owners/index'
  
  get 'users/index'
  root "home#index"
  resources :users

  
  resources :warehouse_items, shallow: true do
    resources :suppliers do
    resources :orders do
    resources :products
  end
  end
  end
  end
  