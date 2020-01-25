class Disc < ApplicationRecord

    belongs_to :category

	has_many :disks, dependent: :destroy
	accepts_nested_attributes_for :disks,allow_destroy: true
	attachment :image

end
