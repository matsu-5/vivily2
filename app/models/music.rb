class Music < ApplicationRecord

	mount_uploader :listening, AudioFileUploader
	attachment :image

    has_many :comments, dependent: :destroy

    has_many :favorites, dependent: :destroy
	has_many :favorited_customers, through: :favorites, source: :customer
	def favorited_by?(customer)
		favorites.where(customer_id: customer.id).exists?
	end
end
