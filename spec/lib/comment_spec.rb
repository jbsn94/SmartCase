require "spec_helper"
require "comment"

describe Comment do
    regex = /./
    comment = Comment.new
    
    it "instance of Comment" do
        expect(comment).to be_an_instance_of(Comment)
    end
    
    it "the description is valid" do
        expect(comment.description).to match(regex)
        expect(comment.description).to be_an_instance_of(String)
    end
    
end