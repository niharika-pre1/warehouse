class WarehouseItem < ApplicationRecord
	has_many :suppliers
	has_many :shopkeepers
	has_many :profits
end
