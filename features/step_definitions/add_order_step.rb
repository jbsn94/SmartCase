Then(/^I should be on the Create a New Order$/) do
  assert_current_path(new_order_path)
end