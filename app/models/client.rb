class Client < ApplicationRecord
	validates :cnic, uniqueness: true
	validates :first_name, presence: true
	has_many :orders
	has_many :accounts
	has_many :transfers
end
