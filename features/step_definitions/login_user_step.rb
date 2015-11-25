Given(/^I am on the login page$/) do
  @user = User.new(name: "User Name", email: "username3@cin.ufpe", cpf: "12345", password: "12345", tipo: "Solicitante")
  @user.save
  visit(root_path)
end

When(/^I press login button$/) do
    click_button('Entrar')
    visit(index_path)
end

Then(/^I should be on the Index Page$/) do
  assert_current_path(index_path)
end