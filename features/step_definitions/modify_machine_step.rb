Then(/^I should go to Edit Machine Information$/) do
    assert_current_path(edit_machine_path(1))
end

When(/^I press on the machine button "(.*?)"$/) do |arg1|
  click_button(arg1)
  @mach.update(tipping: "D25A", description: "Machine was repaired", model: "DELL25A")
  visit(edit_machine_path(1))
end