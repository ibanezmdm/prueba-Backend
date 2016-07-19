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

	test "every item deleted keep into record table" do
		sn = @item1.serial_number
		@item1.destroy
		record = Record.where("description like ?", "%#{sn}%")
		assert_match "La pieza con serial #{sn} ha sido borrada", record.first.description
	end

end
