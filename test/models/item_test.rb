require 'test_helper'

class ItemTest < ActiveSupport::TestCase
	# test "the truth" do
	#   assert true
	# end

	setup do
		@item1 = items(:item_one)
	end

	# test "item serial number must be unique" do
	# 	i = Item.new(description: "item", serial_number: @item1.serial_number, item_size: 1)
	# 	i.valid?
	# 	assert_not_nil i.errors(:serial_number)
	# end

end
