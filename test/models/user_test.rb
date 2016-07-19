require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
    @user1 = users(:user_1)
  end

  test "User must have a name" do
    @user1.name = nil
    assert_not @user1.valid?
  end

end
