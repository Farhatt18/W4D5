require "rspec"
require_relative "../lib/tdd.rb"

describe "Array#my_uniq" do 
    it "does not use built-in Array#uniq" do 
        expect(my_uniq([1,2,1,3,3])).to eq([1,2,3])   
    end

    it "returns array with duplicates removed" do 
        expect(my_uniq([1,2,1,3,3])).to eq([1,2,3])   
    end

    it "returns a new array" do
        expect(my_uniq([1,2,1,3,3])).not_to be([1,2,3]) 
    end
end

describe "Array#two_sum" do
    it "return pair of positions where the elements sum to zero" do
        expect(two_sum([-1, 0, 2, -2, 1])).to eq ([[0, 4], [2, 3]])
    end

    it "find multiple pairs" do
        expect(two_sum([-1, 67, -67, 0, 1])).to eq ([[0, 4], [1, 2]])
    end

    it "find pairs with same element" do
        expect(two_sum([6, -6, -6])).to eq ([[0, 1], [0, 2]])
    end

    it "return empty array if no pair is found" do
        expect(two_sum([6, -5, -4])).to eq ([])
    end

    it "return array with sum of real zeros" do
        expect(two_sum([0, 93434343, 9, 0])).to eq ([[0, 3]])
    end

    # it "return sorted array with smaller index before bigger index" do
    #     expect(two_sum([-1, 0, 2, -2, 1])).not_to eq ([[4, 0], [3, 2]])
    # end

end

