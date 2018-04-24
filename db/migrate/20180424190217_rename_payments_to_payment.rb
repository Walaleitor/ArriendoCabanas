class RenamePaymentsToPayment < ActiveRecord::Migration[5.1]
  def change
    rename_column :bicycles, :cabins_id, :cabin_id
  end
end
