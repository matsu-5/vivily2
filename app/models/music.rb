class Music < ApplicationRecord
	mount_uploader :listening, AudioFileUploader
	attachment :image
end
