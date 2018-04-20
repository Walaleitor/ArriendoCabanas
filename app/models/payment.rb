class Payment < ApplicationRecord
  belongs_to :reservation
  has_many :products
  has_one :services
  has_many :bicycles
end
