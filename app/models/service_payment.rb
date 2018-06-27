# == Schema Information
#
# Table name: service_payments
#
#  id             :bigint(8)        not null, primary key
#  amount         :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  reservation_id :bigint(8)
#  service_id     :bigint(8)
#
# Indexes
#
#  index_service_payments_on_reservation_id  (reservation_id)
#  index_service_payments_on_service_id      (service_id)
#
# Foreign Keys
#
#  fk_rails_...  (reservation_id => reservations.id)
#  fk_rails_...  (service_id => services.id)
#

class ServicePayment < ApplicationRecord
  belongs_to :reservation
  belongs_to :service
end
