class CreateBanks < ActiveRecord::Migration[5.1]
  def change
    create_table :banks do |t|
      t.string :name
      t.string :address
      t.string :zip_code
      t.string :country

      t.timestamps
    end
  end
end
