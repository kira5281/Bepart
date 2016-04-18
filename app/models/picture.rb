class Picture < ActiveRecord::Base
	mount_uploader :upimg, UpimgUploader

	belongs_to :product
end
