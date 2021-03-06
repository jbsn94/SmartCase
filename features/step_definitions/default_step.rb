# Passos presentes em todas as features

When(/^I login the system$/) do
  @user = User.new(name: "User Name", email: "username3@cin.ufpe", cpf: "12345", password: "12345", tipo: "Administrador")
  @user.save
  
  @mach = Machine.new(tipping: "A254", description: "Machine has problem", model: "ASUS24")
  @mach.save
  
  @order = Order.new(title: "Machine has problem", description: "Machine needs repair on diplay of the monitor", local: "CCSA", status: "Ativo", user_id: @user.id)
  @order.save
  
  visit(root_path)
  fill_in("session[cpf]", :with => "12345")
  fill_in("session[password]", :with => "12345")
  click_button('Entrar')
  assert_current_path(index_path)
end

When(/^I login the system like a user$/) do
  @user = User.new(name: "Solicitante", email: "username1@cin.ufpe", cpf: "123", password: "123", tipo: "Solicitante")
  @user.save
  
  @mach = Machine.new(tipping: "A254", description: "Machine has problem", model: "ASUS24")
  @mach.save
  
  @order = Order.new(title: "Machine has problem", description: "Machine needs repair on diplay of the monitor", local: "CCSA", status: "Ativo", user_id: @user.id)
  @order.save
  
  @comment = Comment.new(description: "Display receice repairs", order_id: @order.id)
  @comment.save
  
  visit(root_path)
  fill_in("session[cpf]", :with => "123")
  fill_in("session[password]", :with => "123")
  click_button('Entrar')
  assert_current_path(index_path)
end
# Passo apenas para orders

Given(/^I am on the Orders Page$/) do
  visit(orders_path)  
end

Then(/^I am on the Order Information$/) do
    visit(order_path(1))
end

# Passo apenas para users

Given(/^I am on the Users Page$/) do
  visit(users_path)  
end

# Passo apenas para machines

Given(/^I am on the Machines Page$/) do
  visit(machines_path)
end

# Passos presentes nas features de modificação e exclusão

Given(/^I should see "(.*?)"$/) do |arg1|
  find('td', text: arg1, exact: true)
end

When(/^I follow "(.*?)"$/) do |arg1|
  click_link(arg1)
end

# Passos presentes nas features de criação e modificação

When(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  fill_in(arg1, :with => arg2)
end

Then(/^I should see a text "(.*?)"$/) do |arg1|
  page.has_content?(arg1)
end

When(/^I choose in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
    select(arg2, :from => arg1)
end