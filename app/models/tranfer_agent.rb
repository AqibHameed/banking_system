class TranferAgent < ApplicationRecord
  validates :first_name, presence: true	
  has_many :orders
  has_many :transfers, through: :orders	
  belongs_to :bank
end
