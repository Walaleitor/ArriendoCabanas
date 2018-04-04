class Customer < ApplicationRecord
  has_many :reservations
  has_many :cabins , through: :reservations
end
