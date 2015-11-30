require "spec_helper"
require "user"

describe User do
    regex_number = /[0-9]/
    regex_letters = /[A-Za-z]/
    regex_email = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    invalid_input = "qw98e4123123"

    us = User.new
    
    it "instance of User" do
        expect(us).to be_an_instance_of(User)
    end
    
    it "the name is valid" do
        expect(us.name).to match(regex_letters)
        expect(us.name).not_to match(invalid_input)
        expect(us.name).to be_an_instance_of(String)
    end

    it "the password is valid" do
        expect(us.password).not_to match(" ")
        expect(us.password).to be_an_instance_of(String)
    end

    it "the cpf is valid" do
        expect(us.cpf).to match(regex_number)
        expect(us.cpf).not_to match(invalid_input)
        expect(us.cpf).to be_an_instance_of(String)
    end

    it "the tipo is valid" do
        expect(us.tipo).to match("Administrador")
        expect(us.tipo).not_to match(" ")
        expect(us.tipo).to be_an_instance_of(String)
    end
    
    it "the email is valid" do
        expect(us.email).to match(regex_email)
        expect(us.email).not_to match("@@.@_")
        expect(us.email).to be_an_instance_of(String)
    end
end