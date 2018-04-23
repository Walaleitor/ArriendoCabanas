class Product < ApplicationRecord
	has_one :payments
	belongs_to :cabins
end
