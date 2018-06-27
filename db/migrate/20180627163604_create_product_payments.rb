class CreateProductPayments < ActiveRecord::Migration[5.1]
  def change
    create_table :product_payments do |t|
      t.integer :amount
      t.belongs_to :reservation, foreign_key: true
      t.belongs_to :product, foreign_key: true

      t.timestamps
    end
  end
end
