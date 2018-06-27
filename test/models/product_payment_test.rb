# == Schema Information
#
# Table name: product_payments
#
#  id             :bigint(8)        not null, primary key
#  amount         :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  product_id     :bigint(8)
#  reservation_id :bigint(8)
#
# Indexes
#
#  index_product_payments_on_product_id      (product_id)
#  index_product_payments_on_reservation_id  (reservation_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_id => products.id)
#  fk_rails_...  (reservation_id => reservations.id)
#

require 'test_helper'

class ProductPaymentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
