class Payment < ApplicationRecord
  belongs_to :reservation
  has_many :products
  has_many :services
  has_many :bicycles
end
