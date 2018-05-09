class RemoveIndexProductsBicyclesServices < ActiveRecord::Migration[5.1]
  def change
    remove_index :products, column: :payment_id
    remove_index :services, column: :payment_id
    remove_index :bicycles, column: :payment_id
  end
end
