class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.bigint :quantity
      t.bigint :price
      t.belongs_to :cabins, index: true

      t.timestamps
    end
  end
end
