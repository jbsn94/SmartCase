<<<<<<< HEAD
Given(/^I am on the users home page$/) do
  @user = User.new(name: "User Name 2", email: "username1@cin.ufpe", cpf: "123456", password: "123456", tipo: "Solicitante")
  @user.save
  visit(users_path)
=======
When(/^I have two or more Users$/) do
  @user2 = User.new(name: "User Name Teste", email: "username3@cin.ufpe", cpf: "123456", password: "123456", tipo: "Administrador")
  @user2.save
  page.has_content?(@user.name)
  page.has_content?(@user2.name)
>>>>>>> BDD
end

When(/^I follow delete user "(.*?)"$/) do |arg1|
  all(:link, arg1)[1].click
end

Then(/^I should back to the users home page$/) do
  assert_current_path(users_path)
end

Then(/^I should not see the user "(.*?)"$/) do |arg1|
<<<<<<< HEAD
    !page.has_content?(arg1)
=======
    if page.has_content?(arg1)
      find( 'td', text: arg1, exact: true )
    end
>>>>>>> BDD
end
