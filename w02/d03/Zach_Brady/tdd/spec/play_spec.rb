require "spec_helper"
require_relative "../lib/play"

describe "#add" do 
  it "adds two positive numbers together" do
    expect(add(2, 3)).to eq(5)
  end

  it "adds two negative numbers together" do
    expect( add(-2, -4) ).to eq(-6)
  end
end

describe "#odds" do
  it "removes even integers from an array, only leaving odd integers" do
    expect( odd([1, 2, 3]) ). to eq([1, 3])
  end

  it "returns an empty array when all elements of the array are even integers" do 
    expect( odd([2, 4, 6]) ).to eq([])
  end

  it "returns an empty array when passed and empty array" do
    expect( odd([]) ).to eq([])
  end
end

describe "#palindrome?" do
  it "returns true if the first and last letter of the word are the same" do
    expect( palindrome?("zaz") ).to eq(true)
  end

  it "returns true even if the word is longer than two characters" do 
    expect( palindrome?("hannah") ).to eq(true)

  end
  it "returns true even when the word is capitalized" do
    expect( palindrome?("Hannah") ).to eq(true)
  end

  it "returns false for non-palindromes" do
    expect( palindrome?("jeff") ).to eq(false)
  end
end

describe "rock,paper,scissors" do
   let(:player_one) do
     { name: "Jeff", play: "scissors" }
   end
   let(:player_two) do
     { name: "Peter", play: "paper" }
   end

  context "player one has the winning hand" do
    it "wins the game!" do
      expect( rps(player_one, player_two) ).to eq("Jeff wins!")
    end
  end

  context "player two has the winning hand" do
    before do
      player_two[:play] = "rock" 
    end

     it "wins the game!" do
      expect( rps(player_one, player_two) ).to eq("Peter wins!")
    end
    
  end
end