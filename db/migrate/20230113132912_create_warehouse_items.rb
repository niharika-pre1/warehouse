class CreateWarehouseItems < ActiveRecord::Migration[7.0]
  def change
    create_table :warehouse_items do |t|
      t.string :name
      t.integer :price
      t.integer :quantity

      t.timestamps
    end
  end
end
