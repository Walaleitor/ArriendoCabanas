class AddForeignKeyToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :reservations, :customers, column: :customers_id, primary_key: :id
  end
end
