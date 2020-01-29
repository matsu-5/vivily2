class BlogComment < ApplicationRecord
	belongs_to :customer
    belongs_to :blog
    validates :content, presence: true
end
