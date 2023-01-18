class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.belongs_to :supplier
      t.integer :order_no

      t.timestamps
    end
  end
end
