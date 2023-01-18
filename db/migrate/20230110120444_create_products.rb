class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.belongs_to :supplier
      t.belongs_to :order,null:true,foreign_key: true
      
      t.string :name
      t.integer :price
      t.string :description
      t.integer :quantity

      t.timestamps
    end
  end
end
