class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.belongs_to :warehouse
      t.string :name

      t.timestamps
    end
  end
end