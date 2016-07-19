require 'test_helper'

class ItemTest < ActiveSupport::TestCase
	# test "the truth" do
	#   assert true
	# end

	setup do
		@item1 = items(:item_1)
	end

	# test "item serial number must be unique" do
	# 	i = Item.new(description: "item", serial_number: @item1.serial_number, item_size: 1)
	# 	i.valid?
	# 	assert_not_nil i.errors(:serial_number)
	# end

	test "item size must be greater than zero" do
		@item1.item_size = 0
		assert_not @item1.valid?
	end

end
