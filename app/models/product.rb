# == Schema Information
#
# Table name: products
#
#  id          :bigint(8)        not null, primary key
#  description :string
#  name        :string
#  price       :bigint(8)
#  quantity    :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  cabin_id    :bigint(8)
#  payment_id  :bigint(8)
#
# Indexes
#
#  index_products_on_cabin_id    (cabin_id)
#  index_products_on_payment_id  (payment_id)
#
# Foreign Keys
#
#  fk_rails_...  (cabin_id => cabins.id)
#

class Product < ApplicationRecord	
	belongs_to :cabin
	has_many :product_payments
	has_many :reservations , through: :product_payments

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
