When(/^I have two or more Users$/) do
  @user2 = User.new(name: "User Name Teste", email: "username3@cin.ufpe", cpf: "123456", password: "123456", tipo: "Administrador")
  @user2.save
  page.has_content?(@user.name)
  page.has_content?(@user2.name)
end

When(/^I follow delete user "(.*?)"$/) do |arg1|
  click_link('Deletar usuário2')
end

Then(/^I should back to the users home page$/) do
  assert_current_path(users_path)
end

Then(/^I should not see the user "(.*?)"$/) do |arg1|
    if page.has_content?(arg1)
      find( 'td', text: "Teste", exact: true )
    end
end
