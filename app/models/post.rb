class Post < ApplicationRecord
	belongs_to :user
	has_many :plants
	has_many :photos
	has_many :comments
end
