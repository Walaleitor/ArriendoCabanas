class RenombrarAtributoType < ActiveRecord::Migration[5.1]
  def change
    rename_column :cabins, :type, :tipo
  end
end
