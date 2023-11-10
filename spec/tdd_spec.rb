require "rspec"
require_relative "../lib/tdd.rb"

describe "Array#my_uniq" do 
    it "returns array with duplicates removed" do 
        expect(my_uniq([1,2,1,3,3])).to eq([1,2,3])   
    end

    it "returns a new array" do
        expect(my_uniq([1,2,1,3,3])).not_to be ([1,2,3]) 

    end
end