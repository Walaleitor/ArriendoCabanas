class Service < ApplicationRecord
	has_many :payments
	belongs_to :cabin
end
