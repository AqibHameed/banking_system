class Account < ApplicationRecord
  validates :account_number, uniqueness: true	
  has_many :transfers	
  belongs_to :client
  belongs_to :bank

  enum account_type: [:current_account, :saving_account]
end
