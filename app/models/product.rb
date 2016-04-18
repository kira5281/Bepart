class Product < ActiveRecord::Base
	belongs_to :cause
	belongs_to :category
	has_many :pictures
end
