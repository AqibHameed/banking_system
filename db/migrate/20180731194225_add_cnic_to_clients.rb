class AddCnicToClients < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :cnic, :string
  end
end
