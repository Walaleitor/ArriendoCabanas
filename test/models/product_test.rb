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
#
# Indexes
#
#  index_products_on_cabin_id  (cabin_id)
#
# Foreign Keys
#
#  fk_rails_...  (cabin_id => cabins.id)
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
