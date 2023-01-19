class ApplicationController < ActionController::Base
  devise_group :client, contains: [:supplier, :shopkeeper, :warehouse_owner]
end
