Then(/^I should go to Edit User Information$/) do
    assert_current_path(edit_user_path(@user.id))
end

When(/^I choose the "(.*?)" with "(.*?)"$/) do |arg1, arg2|
    select(arg2, :from => arg1)
end

When(/^I press on "(.*?)"$/) do |arg1|
  click_button(arg1)
  @user.update(name: "User Name 2", email: "user2@email.com", cpf: "123123123-22", password: "kamehameha2")
  visit(edit_user_path(1))
end