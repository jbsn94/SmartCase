require 'test_helper'

class MachineTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "should save with all those fields fill" do
    @mach = Machine.new(tipping: "q9we18", description: "qDCQER8", model: "1231981FFD")
    assert @mach.save
  end

  test "should not save without fill the user fields" do
    @mach = Machine.new(tipping: "q9we18", description: "qDCQER8")
    assert_not @mach.save, "Saved the user without fill all fields"
  end
  
end
