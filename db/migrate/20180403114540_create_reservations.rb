class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.date :start_date
      t.date :end_date
      t.belongs_to :cabin, index: true
      t.belongs_to :customers, index: true
            

      t.timestamps
    end
  end
end
