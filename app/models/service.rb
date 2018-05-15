class Service < ApplicationRecord
	has_many :payments
	belongs_to :cabin

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
