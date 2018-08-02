class Order < ApplicationRecord
  has_many :transfers	
  belongs_to :client
  belongs_to :transfer_agent
end
