class Product < ApplicationRecord
	has_many :payments
	belongs_to :cabin

	#Validaciones
	validates :name,
			  		presence: true,
			  		length: {minimun: 3, maximum: 20 }

	validates :description,
			  		presence: true,
			  		length: {minimun: 3, maximum: 40 }

	validates :quantity,
					  presence: true,
					  numericality: true

	validates :price,
					  presence: true,
					  numericality: true
end
