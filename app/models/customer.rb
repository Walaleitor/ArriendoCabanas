class Customer < ApplicationRecord
  has_many :reservations, :dependent => :delete_all
  has_many :cabins , through: :reservations
end
