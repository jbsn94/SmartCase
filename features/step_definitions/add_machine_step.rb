Given(/^I am on the machines page$/) do
  visit(machines_path)
end
When(/^I press machine "(.*?)"$/) do |arg1|
  click_link(arg1)
end
Then(/^I should be on the Create a New Machine$/) do
  assert_current_path(new_machine_path)
end