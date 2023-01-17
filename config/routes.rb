Rails.application.routes.draw do

  root "home#index"
  
  resources :warehouse_items do
    resources :suppliers
  end
  end
  