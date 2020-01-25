class Category < ApplicationRecord
	has_many :discs

	#validates :name, presence: true
	accepts_nested_attributes_for :discs, allow_destroy: true
end
