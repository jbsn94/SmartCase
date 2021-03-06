require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "should save with all fields fill" do
    @user = User.new(name: 'Neto', email: 'jbsn@cin.ufpe.br', cpf: '108843', password: '12345678910', tipo: 'Administrador')
    assert @user.save
  end

  test "should not save without fill the user fields" do
    @user = User.new(name: 'Neto', email: 'jbsn@cin.ufpe.br', cpf: '108843', password: '12345678910')
    assert_not @user.save, "Saved the user without fill all fields"
  end
  
  test "should have to validates email" do
    regex = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    @user = User.new(email: 'jbsn@uf1pe.br')
    assert_match regex, @user.email
  end
  
  test "should have to validates name" do
    regex = /[A-Za-z]/
    @user = User.new(name: "Victor Nunes")
    assert_match regex, @user.name
  end
  
  test "should have to validates cpf" do
    regex = /[0-9]/
    @user = User.new(cpf: "123456789")
    assert_match regex, @user.cpf
  end
end
