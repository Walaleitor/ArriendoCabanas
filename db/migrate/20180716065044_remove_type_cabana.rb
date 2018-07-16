class RemoveTypeCabana < ActiveRecord::Migration[5.1]
  def change
    remove_column :cabins, :tipo
  end
end
