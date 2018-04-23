class Service < ApplicationRecord
	has_one :payments
	has_one :cabins
end
