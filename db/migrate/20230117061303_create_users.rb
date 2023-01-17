class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :type
      t.string :name
      t.integer :mobile_no
      t.integer :product_quantity
      t.integer :product_price

      t.timestamps
    end
  end
end
