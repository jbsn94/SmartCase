require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save if not have description" do
    @comment = Comment.new()
    assert_not @comment.save
  end
  
  test "should not save if have description" do
    @comment = Comment.new(description: "Testes eletricos no computador foram realizados.")
    assert @comment.save
  end
end
