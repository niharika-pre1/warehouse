class Category < ApplicationRecord
	belongs_to :warehouse
   has_many :products
end
