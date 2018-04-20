class Service < ApplicationRecord
	has_many :payments
	has_one :cabins
end
