class Recipe < ActiveRecord::Base
	belongs_to :user
	mount_uploader :image, ImageUploader
	has_many :reviews
end
