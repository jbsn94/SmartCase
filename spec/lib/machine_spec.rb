require "spec_helper"
require "machine"

describe Machine do
    regex = /[A-Za-z0-9]/
    invalid_input = "__+"
    mach = Machine.new
    
    it "instance of Machine" do
        expect(mach).to be_an_instance_of(Machine)
    end
    
    it "the tipping is valid" do
        expect(mach.tipping).to match(regex)
        expect(mach.tipping).not_to match(invalid_input)
        expect(mach.tipping).to be_an_instance_of(String)
    end
    
    it "the description is valid" do
        expect(mach.description).to match(regex)
        expect(mach.description).not_to match(invalid_input)
        expect(mach.description).to be_an_instance_of(String)
    end
    
    it "the model is valid" do
        expect(mach.model).to match(regex)
        expect(mach.model).not_to match(invalid_input)
        expect(mach.model).to be_an_instance_of(String)
    end

end