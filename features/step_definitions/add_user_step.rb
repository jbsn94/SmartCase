Then(/^I should be on the Create a New User$/) do
  assert_current_path(new_user_path)
end

When(/^I choose in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
    select(arg2, :from => arg1)
end

When(/^I press "(.*?)"$/) do |arg1|
  @count = User.count
  @user=User.new(name: "User Name 2", email: "username2@cin.ufpe", cpf: "12345678901", password: "1234568901", tipo: "Solicitante")
  click_button(arg1)
  @user.save
  visit(user_path(@user.id))
end

Then(/^I should be on the New User Page$/) do
  assert_current_path(user_path(@user.id))
end