# == Schema Information
#
# Table name: bicycle_payments
#
#  id             :bigint(8)        not null, primary key
#  amount         :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  bicycle_id     :bigint(8)
#  reservation_id :bigint(8)
#
# Indexes
#
#  index_bicycle_payments_on_bicycle_id      (bicycle_id)
#  index_bicycle_payments_on_reservation_id  (reservation_id)
#
# Foreign Keys
#
#  fk_rails_...  (bicycle_id => bicycles.id)
#  fk_rails_...  (reservation_id => reservations.id)
#

class BicyclePayment < ApplicationRecord
  belongs_to :reservation
  belongs_to :bicycle
end
