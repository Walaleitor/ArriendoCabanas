class AddStateAndTotalReservations < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :state, :string
    add_column :reservations, :total, :int
  end
end
