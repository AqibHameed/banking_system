class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.datetime :order_time
      t.references :client, foreign_key: true
      t.references :transfer_agent, foreign_key: true

      t.timestamps
    end
  end
end
