Given(/^I am on the users home page$/) do
  @user=User.new(name: "User Name", email: "user@email.com", cpf: "123123123-12", password: "kamehameha")
  @user.save
  visit(users_path)
end
Given(/^I should see "(.*?)"$/) do |arg1|
  find( 'td', text: 'User Name', exact: true )
end
When(/^I follow "(.*?)"$/) do |arg1|
    click_link("Excluir")
end
Then(/^I should back to the users home page$/) do
  assert_current_path(users_path)
end
Then(/^I should not see the user "(.*?)"$/) do |arg1|
    if page.has_content?("User Name")
      find( 'td', text: 'User Name', exact: true )
    end
end