class User < ApplicationRecord
	belongs_to :city
	has_many :gossips
	validates :first_name, uniqueness: true
	validates :last_name, uniqueness: true
end
