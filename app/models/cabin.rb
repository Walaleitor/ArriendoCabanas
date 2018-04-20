class Cabin < ApplicationRecord
  has_many :reservations
  has_many :customers , through:  :reservations
  has_many :bicycles
  has_many :services
end
