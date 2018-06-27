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
#
# Indexes
#
#  index_services_on_cabin_id  (cabin_id)
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
			      presence: true,
			      length: {minimun: 3, maximum: 40}

	validates :quantity,
			      presence: true,
			      numericality: true

	validates :value,
			      presence: true,
			      numericality: true

  end
