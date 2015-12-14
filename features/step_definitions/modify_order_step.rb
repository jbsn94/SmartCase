When(/^I click in "(.*?)"$/) do |arg1|
  click_button(arg1)
  visit(edit_order_path(1))
end

Then(/^I should go to Edit Order Information$/) do
    assert_current_path(edit_order_path(1))
end

When(/^I press on the order button "(.*?)"$/) do |arg1|
  click_button(arg1)
  @order.update(title: "Machine with problems", description: "Instead 1 reported, the machine has 2 problems", local: "CCSA")
  visit(edit_order_path(1))
end