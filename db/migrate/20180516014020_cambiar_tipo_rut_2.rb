class CambiarTipoRut2 < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :rut, :string
  end
end
