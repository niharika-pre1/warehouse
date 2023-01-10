class Warehouse < ApplicationRecord
	belongs_to :owner
	has_many :categories
end
