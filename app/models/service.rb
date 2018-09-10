# == Schema Information
#
# Table name: services
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  quantity   :string
#  value      :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  cabin_id   :bigint(8)
#  payment_id :bigint(8)
#
# Indexes
#
#  index_services_on_cabin_id    (cabin_id)
#  index_services_on_payment_id  (payment_id)
#
# Foreign Keys
#
#  fk_rails_...  (cabin_id => cabins.id)
#

class Service < ApplicationRecord
	belongs_to :cabin
	has_many :service_payments
	has_many :reservations , through: :service_payments

	#Validaciones
	validates :name,
			      presence: {message: ": No puede estar en blanco"},
			      length: {minimun: 3, maximum: 40}

	validates :quantity,
			      presence: {message: ": No puede estar en blanco"},
			      numericality: {only_integer: true, message: ": Solo puede contener números"}


	validates :value,
			      presence: {message: ": No puede estar en blanco"},
			      numericality: {only_integer: true, message: ": Solo puede contener números"}


  end
