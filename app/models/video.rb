class Video < ApplicationRecord
	mount_uploader :video, VideoUploader
	attachment :image
end
