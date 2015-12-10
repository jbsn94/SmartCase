require "spec_helper"
require "order"

describe Order do
    regex_all = /./
    regex = /[A-Za-z0-9]/
    regex_number = /[0-9]/
    regex_letters = /[A-Za-z]/
    order = Order.new
    
    it "instance of Machine" do
        expect(order).to be_an_instance_of(Order)
    end

    it "the status is valid" do
        expect(order.status).to match(regex_letters)
        expect(order.status).not_to match(regex_number)
        expect(order.status).to be_an_instance_of(String)
    end
    
    it "the description is valid" do
        expect(order.description).to match(regex_all)
        expect(order.description).to be_an_instance_of(String)
    end
    
    it "the local is valid" do
        expect(order.local).to match(regex_letters)
        expect(order.local).to match(regex_number)
        expect(order.local).to be_an_instance_of(String)
    end
    
    it "the status is valid" do
        expect(order.title).to match(regex_letters)
        expect(order.title).not_to match(regex_number)
        expect(order.title).to be_an_instance_of(String)
    end
end