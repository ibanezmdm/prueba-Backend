class Item < ActiveRecord::Base
	belongs_to :category
	has_one :inventories
	has_many :works, dependent: :destroy
	validates :item_size, numericality: {greater_than: 0}

	scope :size, -> (n) {where(item_size: n)}

end
