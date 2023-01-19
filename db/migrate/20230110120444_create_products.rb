class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.belongs_to :order  
      t.string :name
      t.integer :price
      t.string :description
      t.integer :quantity

      t.timestamps
    end
  end
end
