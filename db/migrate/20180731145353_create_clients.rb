class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :string
      t.string :last_name
      t.string :email
      t.string :string
      t.string :phone_number
      t.string :string
      t.string :addres
      t.string :string

      t.timestamps
    end
  end
end
