class AgregarLlavesForaneas < ActiveRecord::Migration[5.1]
  def change

    add_reference :products, :payments, index: true
    add_reference :services, :payments, index: true
    add_reference :bicycles, :payments, index: true

    #add_foreign_key :products, :payments
    #add_foreign_key :services, :payments
    #add_foreign_key :bicycles, :payments

  end
end
