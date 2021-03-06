class User < ApplicationRecord
	belongs_to :city
	has_many :gossips
	has_many :comments
	validates :first_name, presence: true
	validates :last_name, presence: true
	has_secure_password
end
