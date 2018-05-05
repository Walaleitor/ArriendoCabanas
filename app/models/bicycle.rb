class Bicycle < ApplicationRecord
	belongs_to :cabin
	has_many :payments

	#Validaciones
	validates :model,
			  presence: true,
			  lenght: {minimun: 3, maximum: 20 }

    validates :ring_size,
    		  presence: true,
    		  numericality: true

    validates :tipo,
    		  presence: true,
    		  lenght: {minimun: 3, maximum: 20 }

    validates :value,
    		  presence: true,
    		  numericality: true

end
