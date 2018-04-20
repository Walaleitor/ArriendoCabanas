class CreateBicycles < ActiveRecord::Migration[5.1]
  def change
    create_table :bicycles do |t|
      t.string :model
      t.bigint :ring_size
      t.string :type
      t.bigint :value
      t.belongs_to :cabins, index: true

      t.timestamps
    end
  end
end
