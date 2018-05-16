# == Schema Information
#
# Table name: reservations
#
#  id          :bigint(8)        not null, primary key
#  end_date    :date
#  start_date  :date
#  state       :string
#  total       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  cabin_id    :bigint(8)
#  customer_id :bigint(8)
#
# Indexes
#
#  index_reservations_on_cabin_id     (cabin_id)
#  index_reservations_on_customer_id  (customer_id)
#
# Foreign Keys
#
#  fk_rails_...  (cabin_id => cabins.id)
#  fk_rails_...  (customer_id => customers.id)
#

require 'test_helper'

class ReservationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
