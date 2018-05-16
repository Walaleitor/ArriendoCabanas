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

require 'test_helper'

class BicycleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
