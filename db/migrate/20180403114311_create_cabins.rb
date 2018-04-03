class CreateCabins < ActiveRecord::Migration[5.1]
  def change
    create_table :cabins do |t|
      t.string :type
      t.text :description

      t.timestamps
    end
  end
end
