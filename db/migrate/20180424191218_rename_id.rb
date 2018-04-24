class RenameId < ActiveRecord::Migration[5.1]
  def change
    rename_column :bicycles, :payments_id, :payment_id
    rename_column :products, :cabins_id, :cabin_id
    rename_column :products, :payments_id, :payment_id
    rename_column :reservations, :customers_id, :customer_id
    rename_column :services, :cabins_id, :cabin_id
    rename_column :services, :payments_id, :payment_id
  end
end
