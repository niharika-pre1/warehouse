Rails.application.routes.draw do
  

  root "home#index"
  
  resources :warehouse_items, shallow: true do
    resources :suppliers do
    resources :products
  end
  end
  end
  