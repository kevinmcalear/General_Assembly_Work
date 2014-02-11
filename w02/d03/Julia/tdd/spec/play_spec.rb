require "spec_helper"
#.. means we're in the spec file, back it up one, then 
#get into the lib file
require_relative "../lib/play"

describe "#add" do 
  it "adds two numbers together" do
    expect(add(2,3)).to eq(5)
  end

  it "adds two negative numbers together" do
    expect(add(-2, -4)).to eq(-6)
  end
end

#test the functionality of odd numbers in an array
#some odd numbers
#no odd numbers


#describe is a method that takes one argument and a block
#it is method that takes one argument and a block
#expect is a method that 
describe "#odds" do
  it "figures out if a number is odd" do
  expect(odds([1, 2, 3])).to eq([1,3])
  end

  it "can select from an array with no odds" do
    expect(odds([2, 4, 6])).to eq([])
  end

  it "can select from an array with no elements" do
    expect(odds([])).to eq([])
  end
end

#method that takes a word and says if it's a palindrome or not
describe "#palindrome" do
  it "returns true if a word is a palindrome" do
    expect(palindrome("boob")).to eq(true)
  end

  it "returns false if a word is not a palindrome" do
    expect(palindrome("tiger")).to eq(false)
  end

  it "returns false if a word is one letter" do 
    expect(palindrome("a")).to eq(false)
  end

  it "returns false if a word is an empty string" do
    expect(palindrome("")).to eq(false)
  end

  it "is a palindrome if some characters are uppercase" do
    expect(palindrome("aBbA")).to eq(true)
  end

  it "is a palindrome if there are spaces at the end" do
    expect(palindrome("abba ")).to eq(true)
  end
end

#describe rock, paper, scissors
describe "#rps" do
  let(:player_one) do
    {name: "Jeff", play: "scissors"}
  end
  let(:player_two) do
    {name: "Peter", play: "paper"}
  end

  context "player one wins with the winning hand" do
    it "wins the game!" do
      #you could include these within the body of the it
      #player_one = {name: "Jeff", play: "scissors"}
      #player_two = {name: "Peter", play: "paper"}
      expect(rps(player_one, player_two)).to eq("Jeff wins!")
    end
  end

  context "player two has the winning hand" do
    before do
      player_two[:play] = "rock"
    it "wins the game!" do
      #you could include these within the body of the it
      #player_one = {name: "Jeff", play: "scissors"}
      #player_two = {name: "Peter", play: "rock"}
      expect(rps(player_one, player_two)).to eq("Peter wins!")
    end
  end
end
end









