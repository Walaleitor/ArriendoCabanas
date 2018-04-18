class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.integer :amount
      t.date :payment_date
      t.belongs_to :reservation, index: true

      t.timestamps
    end
  end
end
