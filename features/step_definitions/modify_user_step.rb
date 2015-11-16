Given(/^I am on the Users Page$/) do
  @user=User.new(name: "User Name", email: "user@email.com", cpf: "123123123-12", password: "kamehameha")
  @user.save
  visit(users_path)
end

Given(/^I should see the name "(.*?)"$/) do |arg1|
  find( 'td', text: 'User Name', exact: true )
end

When(/^I click on link "(.*?)"$/) do |arg1|
    click_link("Ver")
end

Then(/^I should go to User Information$/) do
  assert_current_path(user_path(1))
end

When(/^I press the button "(.*?)"$/) do |arg1|
  click_button(arg1)
  visit(edit_user_path(1))
end

Then(/^I should go to Edit User Information$/) do
    assert_current_path(edit_user_path(1))
end

When(/^I fill the field "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  fill_in(arg1, :with => arg2)
end

When(/^I choose the "(.*?)" with "(.*?)"$/) do |arg1, arg2|
    select(arg2, :from => arg1)
end

When(/^I press on "(.*?)"$/) do |arg1|
  @count = User.count
  @user=User.new(name: "User Name 2", email: "user2@email.com", cpf: "123123123-22", password: "kamehameha2")
  click_button(arg1)
  @user.save
  visit(edit_user_path(1))
end

Then(/^I should see the text "(.*?)"$/) do |arg1|
  page.has_content?(arg1)
end