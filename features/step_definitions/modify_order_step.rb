Then(/^I should go to Edit Order Information$/) do
    assert_current_path(edit_order_path(1))
end

When(/^I press on the order button "(.*?)"$/) do |arg1|
  click_button(arg1)
  @order.update(title: "Machine has no problem", description: "Machine was repaired", local: "CCSA - Suporte", status: "Encerrado")
  visit(edit_order_path(1))
end