class Disc < ApplicationRecord

	has_many :disks, dependent: :destroy
	accepts_nested_attributes_for :disks,allow_destroy: true
	attachment :image

end
