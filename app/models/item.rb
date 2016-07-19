class Item < ActiveRecord::Base
	belongs_to :category
	has_many :inventories
	has_many :works
end
