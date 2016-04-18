class Cause < ActiveRecord::Base
	mount_uploader :logo, LogoUploader

	has_many :products
end
