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

describe "Array#two_sum" do
    it "return pair of positions where the elements sum to zero" do
        expect(two_sum([-1, 0, 2, -2, 1])).to eq ([[0, 4], [2, 3]])
    end

    it "return sorted array with smaller index before bigger index" do
        expect(two_sum([-1, 0, 2, -2, 1])).not_to eq ([[4, 0], [3, 2]])
    end

end

