class AddTypeToClients < ActiveRecord::Migration[7.0]
  def change
    add_column :clients, :type, :string
  end
end
