class Product < ApplicationRecord
	has_one :payment
	belongs_to :cabin
end
