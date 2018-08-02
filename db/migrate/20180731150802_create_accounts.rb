class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :account_number
      t.integer :account_type
      t.decimal :balance
      t.references :client, foreign_key: true
      t.integer :status
      t.references :bank, foreign_key: true

      t.timestamps
    end
  end
end
