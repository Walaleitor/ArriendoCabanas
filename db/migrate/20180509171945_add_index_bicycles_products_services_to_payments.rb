class AddIndexBicyclesProductsServicesToPayments < ActiveRecord::Migration[5.1]
  def change
    add_reference :payments, :products, index: true
    add_reference :payments, :services, index: true
    add_reference :payments, :bicycles, index: true
  end
end
