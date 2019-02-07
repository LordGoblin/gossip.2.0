class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :gossip
	validates :content, length: { in: 2..100 }
end
