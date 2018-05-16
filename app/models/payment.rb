# == Schema Information
#
# Table name: payments
#
#  id             :bigint(8)        not null, primary key
#  amount         :integer
#  payment_date   :date
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  bicycle_id     :bigint(8)
#  product_id     :bigint(8)
#  reservation_id :bigint(8)
#  service_id     :bigint(8)
#
# Indexes
#
#  index_payments_on_bicycle_id      (bicycle_id)
#  index_payments_on_product_id      (product_id)
#  index_payments_on_reservation_id  (reservation_id)
#  index_payments_on_service_id      (service_id)
#
# Foreign Keys
#
#  fk_rails_...  (bicycle_id => bicycles.id)
#  fk_rails_...  (product_id => products.id)
#  fk_rails_...  (reservation_id => reservations.id)
#  fk_rails_...  (service_id => services.id)
#

class Payment < ApplicationRecord
  belongs_to :reservation
  belongs_to :product
  belongs_to :bicycle


  #validaciones
  validates :amount,
            presence: true,
            numericality: true

end
