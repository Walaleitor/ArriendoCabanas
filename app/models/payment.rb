class Payment < ApplicationRecord
  belongs_to :reservation
  has_many :products, :dependent => delete_all
  has_many :services, :dependent => delete_all
  has_many :bicycles, :dependent => delete_all

  #validaciones
  validates :amount,
            presence: true,
            numericality: true

end
