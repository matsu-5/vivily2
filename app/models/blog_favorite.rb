class BlogFavorite < ApplicationRecord
	belongs_to :blog
	belongs_to :customer
	validates_uniqueness_of :blog_id, scope: :customer_id
end
