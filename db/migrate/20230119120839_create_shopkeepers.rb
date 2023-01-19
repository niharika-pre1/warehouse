class CreateShopkeepers < ActiveRecord::Migration[7.0]
  def change
    create_table :shopkeepers do |t|

      t.timestamps
    end
  end
end
