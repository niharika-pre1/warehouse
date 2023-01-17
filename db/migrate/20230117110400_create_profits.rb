class CreateProfits < ActiveRecord::Migration[7.0]
  def change
    create_table :profits do |t|
      t.belongs_to :warehouse_item
      t.integer :purchase_price
      t.integer :profit

      t.timestamps
    end
  end
end
