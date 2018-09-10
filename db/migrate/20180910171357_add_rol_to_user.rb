class AddRolToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :rol, :integer, default: 0
  end
end
