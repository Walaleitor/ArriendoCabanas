class Cabin < ApplicationRecord
  has_many :reservations, :dependent => :delete_all
  has_many :customers , through:  :reservations, :dependent => :delete_all
  has_many :bicycles, :dependent => :delete_all
  has_many :services, :dependent => :delete_all

  #Validaciones
  validates :name,
            presence: true,
            length: {minimun: 3, maximum: 20 }

  validates :tipo,
            presence: true,
            numericality: true
end
