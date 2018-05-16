# == Schema Information
#
# Table name: reservations
#
#  id          :bigint(8)        not null, primary key
#  end_date    :date
#  start_date  :date
#  state       :string
#  total       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  cabin_id    :bigint(8)
#  customer_id :bigint(8)
#
# Indexes
#
#  index_reservations_on_cabin_id     (cabin_id)
#  index_reservations_on_customer_id  (customer_id)
#
# Foreign Keys
#
#  fk_rails_...  (cabin_id => cabins.id)
#  fk_rails_...  (customer_id => customers.id)
#

class Reservation < ApplicationRecord
  belongs_to :customer
  belongs_to :cabin
  has_one :payment

  #Validaciones
  validates_presence_of :end_date, :start_date
  validate :validar_orden_fechas, :solo_reservas_futuras

  def solo_reservas_futuras
      if start_date.year == Date.today.year && start_date.month == Date.today.month && start_date.day < Date.today.day
        errors.add(:start_date, "No se pueden hacer reservas en el pasado")
      end
  end

  def validar_orden_fechas
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
