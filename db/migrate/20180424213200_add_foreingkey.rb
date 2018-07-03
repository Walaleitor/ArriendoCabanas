class AddForeingkey < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :reservations, :cabins, column: :cabin_id, primary_key: :id
    #add_foreign_key :payments, :reservations, column: :reservation_id, primary_key: :id
    add_foreign_key :services, :cabins, column: :cabin_id, primary_key: :id
    #add_foreign_key :services, :payments, column: :payment_id, primary_key: :id
    add_foreign_key :bicycles, :cabins, column: :cabin_id, primary_key: :id
    #add_foreign_key :bicycles, :payments, column: :payment_id, primary_key: :id
    add_foreign_key :products, :cabins, column: :cabin_id, primary_key: :id
    #add_foreign_key :products, :payments, column: :payment_id, primary_key: :id
  end
end
