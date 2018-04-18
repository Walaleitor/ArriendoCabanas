class Reservation < ApplicationRecord
  belongs_to :customer
  belongs_to :cabin
  has_one :payment
  
end
