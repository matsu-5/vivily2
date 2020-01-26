class Music < ApplicationRecord
	belongs_to :customer
    has_many :comments, dependent: :destroy

    has_many :favorites, dependent: :destroy
	has_many :favorited_customers, through: :favorites, source: :customer
	def favorited_by?(customer)
		favorites.where(customer_id: customer.id).exists?
	end

	mount_uploader :listening, AudioFileUploader
	attachment :image
end
