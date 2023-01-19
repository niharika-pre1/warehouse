class Supplier < Client
	belongs_to :warehouse_item
	has_many :orders
	has_many :products,through: :orders
end
