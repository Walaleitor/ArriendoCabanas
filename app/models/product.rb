class Product < ApplicationRecord
	has_many :payments
	belongs_to :cabin
end
