class Service < ApplicationRecord
	has_one :payment
	has_one :cabin
end
