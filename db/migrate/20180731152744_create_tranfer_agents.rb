class CreateTranferAgents < ActiveRecord::Migration[5.1]
  def change
    create_table :tranfer_agents do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :phone_number
      t.string :email
      t.references :bank, foreign_key: true

      t.timestamps
    end
  end
end
