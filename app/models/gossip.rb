class Gossip < ApplicationRecord
	belongs_to :user
	has_many :comments
	validates :title, length: { in: 3..14 }
	validates :title, presence: true
	validates :content, presence: true
end
