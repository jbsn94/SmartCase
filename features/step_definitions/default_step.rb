When(/^I login the system$/) do
  @user = User.new(name: "User Name", email: "username3@cin.ufpe", cpf: "12345", password: "12345", tipo: "Solicitante")
  @user.save
  visit(root_path)
  fill_in("session[cpf]", :with => "12345")
  fill_in("session[password]", :with => "12345")
  click_button('Entrar')
  assert_current_path(index_path)
end
