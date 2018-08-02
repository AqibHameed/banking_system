class Bank < ApplicationRecord
	validates :address, uniqueness: true
	validates :name, uniqueness: true
	has_many :accounts
	has_many :clients
	has_many :transfers
	has_many :transfer_agents
	has_many :orders, through: :transfer_agents
end
