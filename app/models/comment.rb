class Comment < ApplicationRecord
	belongs_to :customer
    belongs_to :music
    validates :content, presence: true
end
