class Movie < ApplicationRecord
	mount_uploader :movie, VideoUploader
	attachment :image
end
