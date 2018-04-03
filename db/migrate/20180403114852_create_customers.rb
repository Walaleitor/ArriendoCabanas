class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :rut
      t.string :email
      t.text :address
      t.string :phone

      t.timestamps
    end
  end
end
