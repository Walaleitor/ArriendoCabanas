class Bicycle < ApplicationRecord
	has_one :cabin
	has_one :payment
end
