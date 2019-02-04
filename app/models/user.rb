class User < ApplicationRecord
	belongs_to :city
	has_many :gossips
	validates :first_name, presence: true
	validates :last_name, presence: true
end
