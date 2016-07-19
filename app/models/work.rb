class Work < ActiveRecord::Base
	belongs_to :user
	belongs_to :item

	scope :last_5, -> { order('created_at DESC').limit(5) }
	scope :no_item, -> { where(item: nil) }
end
