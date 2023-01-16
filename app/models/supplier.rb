class Supplier < ApplicationRecord
	belongs_to :warehouse_item
	has_many :products
end
