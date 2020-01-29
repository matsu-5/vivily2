class Blog < ApplicationRecord
    has_many :blog_comments, dependent: :destroy

	has_many :blog_favorites, dependent: :destroy
	has_many :blog_favorited_customers, through: :blog_favorites, source: :customer
	def blog_favorited_by?(customer)
		blog_favorites.where(customer_id: customer.id).exists?
	end
end
