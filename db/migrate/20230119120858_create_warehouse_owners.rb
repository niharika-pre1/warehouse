class CreateWarehouseOwners < ActiveRecord::Migration[7.0]
  def change
    create_table :warehouse_owners do |t|

      t.timestamps
    end
  end
end
