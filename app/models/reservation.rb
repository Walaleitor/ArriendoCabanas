class Reservation < ApplicationRecord
  belongs_to :customer
  belongs_to :cabin
  has_one :payment

  #Validaciones
  validates_presence_of :end_date, :start_date
  validate :validar_fecha


  def validar_fecha
    if start_date.year == end_date.year && start_date.month == start_date.month && start_date.day == end_date.day

      errors.add(:start_date,"La fecha de inicio con la termino son iguales")

    elsif start_date.year == end_date.year && start_date.month == end_date.month && start_date.day > end_date.day

      errors.add(:start_date, "le fecha de inicio es despues que la de termino")

    elsif start_date.year == end_date.year && start_date.month > end_date.month

      errors.add(:start_date, "le fecha de inicio es despues que la de termino")

    elsif start_date.year > end_date.year

      errors.add(:start_date, "le fecha de inicio es despues que la de termino")

    end

  end
  
end
