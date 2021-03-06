# == Schema Information
#
# Table name: bicycles
#
#  id         :bigint(8)        not null, primary key
#  model      :string
#  ring_size  :bigint(8)
#  tipo       :string
#  value      :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  cabin_id   :bigint(8)
#  payment_id :bigint(8)
#
# Indexes
#
#  index_bicycles_on_cabin_id    (cabin_id)
#  index_bicycles_on_payment_id  (payment_id)
#
# Foreign Keys
#
#  fk_rails_...  (cabin_id => cabins.id)
#

class Bicycle < ApplicationRecord
	belongs_to :cabin
	has_many :bicycle_payments
	has_many :reservations , through: :bicycle_payments

	#Validaciones
	validates :model,
			  		presence: {message: ": No puede estar en blanco"},
			  		length: {minimun: 3, maximum: 20 }

    validates :ring_size,
    		  		presence: {message: ": No puede estar en blanco"}



    validates :tipo,
    		  		presence: {message: ": No puede estar en blanco"},
    		  		length: {minimun: 3, maximum: 20 }

    validates :value,
    		  		presence: {message: ": No puede estar en blanco"},
    		  		numericality: {only_integer: true, message: ": Solo puede contener números"}


end
