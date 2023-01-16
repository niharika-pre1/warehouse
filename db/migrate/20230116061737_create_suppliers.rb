class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers do |t|
      t.belongs_to :warehouse_item
      t.string :name

      t.timestamps
    end
  end
end
