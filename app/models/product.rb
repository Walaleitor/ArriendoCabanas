class Product < ApplicationRecord
	has_one :payments
	has_one :cabins
end
