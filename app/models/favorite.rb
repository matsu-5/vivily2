class Favorite < ApplicationRecord
	belongs_to :music
	belongs_to :customer
	validates_uniqueness_of :music_id, scope: :customer_id
end
