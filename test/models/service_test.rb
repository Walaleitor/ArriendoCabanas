# == Schema Information
#
# Table name: services
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  quantity   :string
#  value      :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  cabin_id   :bigint(8)
#  payment_id :bigint(8)
#
# Indexes
#
#  index_services_on_cabin_id    (cabin_id)
#  index_services_on_payment_id  (payment_id)
#
# Foreign Keys
#
#  fk_rails_...  (cabin_id => cabins.id)
#

require 'test_helper'

class ServiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
