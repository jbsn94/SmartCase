require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should save with all fields fill" do
    @order = Order.new(title: "Machine has problem", description: "Machine needs repair on diplay of the monitor", local: "CCSA", status: "Ativo")
    assert @order.save
  end
  
  test "should not save without all fields fill" do
    @order = Order.new(title: "Machine has problem", description: "Machine needs repair on diplay of the monitor")
    assert_not @order.save, "Saved the order without fill all fields" 
  end
  
  test "should have to validates title" do
    regex = /[A-Za-z]/
    @order = Order.new(title: 'Machine with display broken')
    assert_match regex, @order.title
    assert_no_match "!", @order.title
  end
  
  test "should have to validates description" do
    regex = /./
    @order = Order.new(description: "Machine was repaired - *-*#!23123")
    assert_match regex, @order.description
  end
  
  test "should have to validates local" do
    regex = /[a-zA-Z0-9\-\_]/
    @order = Order.new(local: "CCSA - SUPORTE - SALA 19")
    assert_match regex, @order.local
    assert_no_match "!", @order.local
  end
  
  test "should have to validates status" do
    regex = /[a-zA-Z]/
    @order = Order.new(status: "CCSA")
    assert_match regex, @order.status
    assert_no_match "!984984", @order.status
  end
end
