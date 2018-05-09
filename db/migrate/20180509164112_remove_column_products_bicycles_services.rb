class RemoveColumnProductsBicyclesServices < ActiveRecord::Migration[5.1]
  def change
    remove_column(:services, :payment_id)
    remove_column(:products, :payment_id)
    remove_column(:bicycles, :payment_id)
  end
end
