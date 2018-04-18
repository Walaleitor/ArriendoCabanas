class RenombrarNombreCabins < ActiveRecord::Migration[5.1]
  def change
    rename_column :cabins, :nombre, :name
  end
end
