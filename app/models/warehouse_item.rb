class WarehouseItem < ApplicationRecord
	has_many :categories
	has_many :products, through: :categories
	has_many :suppliers
	has_many :products, through: :suppliers
	has_many :shopkeepers
end
