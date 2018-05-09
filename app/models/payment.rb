class Payment < ApplicationRecord
  belongs_to :reservation
  belongs_to :product
  belongs_to :bicycle


  #validaciones
  validates :amount,
            presence: true,
            numericality: true

end
