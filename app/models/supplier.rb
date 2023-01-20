class Supplier < User
	belongs_to :warehouse_item
	has_many :products
	has_many :orders
end
