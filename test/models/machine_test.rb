require 'test_helper'

class MachineTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "should not save if fields don't match with pattern" do
    regex = /\A[a-zA-Z0-9]+\z/
    @mach = Machine.new(tipping: "q9we18", description: "qDCQER8", model: "123_1981FFD")
    assert_match regex, @mach.tipping
    assert_match regex, @mach.description
    assert_no_match regex, @mach.model
    assert_not @mach.save
  end
end
