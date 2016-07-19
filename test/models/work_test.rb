require 'test_helper'

class WorkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
    @work1 = works(:work_1)
  end

  test "Only with a operation get responsible user" do
    u = @work1.user
    assert_instance_of User, u
  end

end
