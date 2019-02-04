class Gossip < ApplicationRecord
	belongs_to :user
	validates :title, uniqueness: true
	validates :content, uniqueness: true
end
