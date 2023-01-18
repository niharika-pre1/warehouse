class Product < ApplicationRecord
	belongs_to :supplier
	belongs_to :order,optional: true
end
