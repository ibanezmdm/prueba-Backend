class Item < ActiveRecord::Base
	belongs_to :category
	has_one :inventories
	has_many :works, dependent: :destroy
	validates :item_size, numericality: {greater_than: 0}
	before_destroy :keep_record

	scope :size, -> (n) {where(item_size: n)}
	
	private
		def keep_record
			Record.create(description: "La pieza con serial #{serial_number} ha sido borrada")
		end

end
