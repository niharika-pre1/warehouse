class AddWarehouseItemRefToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :warehouse_item, null: false, foreign_key: true
  end
end
