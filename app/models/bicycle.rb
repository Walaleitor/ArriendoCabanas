class Bicycle < ApplicationRecord
	belongs_to :cabin
	has_many :payments
end
