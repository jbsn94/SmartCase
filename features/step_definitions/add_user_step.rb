Given(/^I am on the list of users$/) do
  visit(users_path)
end
When(/^I press button "(.*?)"$/) do |arg1|
  click_button(arg1)
  visit(new_user_path)
end
Then(/^I should be on the Create a New User$/) do
    assert_current_path(new_user_path)
end
When(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  fill_in(arg1, :with => arg2)
end
When(/^I choose in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
    select(arg2, :from => arg1)
end
When(/^I press "(.*?)"$/) do |arg1|
  @count = User.count
  @user=User.new(name: "User Name", email: "user@email.com", cpf: "123123123-12", password: "kamehameha")
  click_button(arg1)
  @user.save
  
end
Then(/^I should be on the New User Page$/) do
  assert_current_path(user_path(1))
end
Then(/^I should see a text "(.*?)"$/) do |arg1|
  page.has_content?(arg1)
end
