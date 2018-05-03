class RenameTypeToTipoBicycles < ActiveRecord::Migration[5.1]
  def change
    rename_column :bicycles, :type, :tipo
  end
end
