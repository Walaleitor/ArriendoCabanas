class AddForeignkeyBicyclesProductsServicesToPayments < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :payments, :services, column: :service_id, primary_key: :id
    add_foreign_key :payments, :products, column: :product_id, primary_key: :id
    add_foreign_key :payments, :bicycles, column: :bicycle_id, primary_key: :id
  end
end
