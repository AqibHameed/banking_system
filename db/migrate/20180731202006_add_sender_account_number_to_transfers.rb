class AddSenderAccountNumberToTransfers < ActiveRecord::Migration[5.1]
  def change
    add_column :transfers, :sender_account_number, :string
  end
end
