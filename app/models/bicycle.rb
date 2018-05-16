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
#
# Indexes
#
#  index_bicycles_on_cabin_id  (cabin_id)
#
# Foreign Keys
#
#  fk_rails_...  (cabin_id => cabins.id)
#

class Bicycle < ApplicationRecord
	belongs_to :cabin
	has_many :payments

	#Validaciones
	validates :model,
			  		presence: true,
			  		length: {minimun: 3, maximum: 20 }

    validates :ring_size,
    		  		presence: true,
    		  		numericality: true

    validates :tipo,
    		  		presence: true,
    		  		length: {minimun: 3, maximum: 20 }

    validates :value,
    		  		presence: true,
    		  		numericality: true

end
