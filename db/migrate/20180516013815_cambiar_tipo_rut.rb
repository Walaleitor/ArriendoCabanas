class CambiarTipoRut < ActiveRecord::Migration[5.1]
  def change
    remove_column(:customers, :rut)
  end
end
