class CreateTransfers < ActiveRecord::Migration[5.1]
  def change
    create_table :transfers do |t|
      t.integer :status, default: 1
      t.string :amount
      t.integer :transfer_type
      t.datetime :transfer_time
      t.references :account, foreign_key: true
      t.references :client, foreign_key: true
      t.references :order, foreign_key: true
      t.references :bank, foreign_key: true

      t.timestamps
    end
  end
end
