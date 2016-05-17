class Product < ActiveRecord::Base
	belongs_to :cause
	belongs_to :category
	belongs_to :manofacturer
	has_many :pictures
	has_many :order_items

  	default_scope { where(active: true) }
end
