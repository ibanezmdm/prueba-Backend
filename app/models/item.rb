class Item < ActiveRecord::Base
	belongs_to :category
	has_many :inventories
	has_many :works
	validates :item_size, numericality: {greater_than: 0}
end
