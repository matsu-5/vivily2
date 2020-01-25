class Music < ApplicationRecord
	belongs_to :customer
    has_many :comments, dependent: :destroy

	mount_uploader :listening, AudioFileUploader
	attachment :image
end
