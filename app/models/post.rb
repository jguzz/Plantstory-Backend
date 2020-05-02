class Post < ApplicationRecord
	belongs_to :user
	belongs_to :plant
	has_many :photos
	has_many :comments
end
