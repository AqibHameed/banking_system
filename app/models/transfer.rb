class Transfer < ApplicationRecord
  validates :amount, presence: true
  validates :sender_account_number, presence: true
  validate :validate_money_transfer	
  belongs_to :account
  belongs_to :client
  belongs_to :order
  belongs_to :bank

  enum status: [:amount_transfer, :amount_not_transfer]

  enum transfer_type: [:money_tranfer, :account_transfer]

  def validate_money_transfer
  	if self.sender_account_number == self.account.account_number
  		 self.errors.add(:transfer,"invalid transaction!")
  	end	
  end	
end
