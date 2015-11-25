Given(/^I am on the users home page$/) do
  @user = User.new(name: "User Name 2", email: "username1@cin.ufpe", cpf: "123456", password: "123456", tipo: "Solicitante")
  @user.save
  visit(users_path)
end
Given(/^I should see "(.*?)"$/) do |arg1|
  find('td', text: arg1)
end
When(/^I follow "(.*?)"$/) do |arg1|
    click_link(arg1)
end
Then(/^I should back to the users home page$/) do
  assert_current_path(users_path)
end
Then(/^I should not see the user "(.*?)"$/) do |arg1|
    !page.has_content?(arg1)
end
