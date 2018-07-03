class AddStateAndTotalReservations < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :state, :string, default: 'sin pagar'
    add_column :reservations, :price, :int
  end
end
