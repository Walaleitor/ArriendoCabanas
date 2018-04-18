class CreateCabins < ActiveRecord::Migration[5.1]
  def change
    create_table :cabins do |t|
      t.integer :type
      t.string :nombre

      t.timestamps
    end
  end
end
