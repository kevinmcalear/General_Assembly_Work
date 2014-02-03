require 'spec_helper'
require_relative '../lib/play'

describe "#add" do
  it "adds two numbers together" do
    expect(add(2,3)).to eq(5)
  end

  it "adds two negative numbers together" do
    expect( add(-2, -4) ).to eq(-6)
  end
end

describe "#odds" do
  it "take an array of numbers and return only the odd numbers" do
      expect( odds [1,2,3] ).to eq([1,3])
    end
  it "takes an array of evens and returns empty array" do
      expect( odds([2,4,6])).to eq([])
    end
  it "takes an empty array and returns an empty array" do    expect( odds([]) ).to eq([])
  end
end

#takes word and tells me if palindrome or not

describe "#palindrome?" do

  it "takes a word that is a palindrome and returns true" do
      expect( palindrome? "ABBA" ).to eq true
    end

  it "takes a word that is not a palindrome and returns false" do
      expect( palindrome?("John") ).to eq(false)
    end

  it "isn't a palindrome if word is one character" do
    expect( palindrome?("a")).to be_false
  end

  it "is a palindrome if some characters are uppercase" do
    expect( palindrome?("aBbA")).to be_true
  end

  it "is a palindrome if there are spaces at the end" do
      expect( palindrome?("abba ")).to be_true
    end
end


describe "#rps" do
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

  # context "player one has the same hand as player two" do
  #   it "is a tie" do
  #     player_one = { name: "Jeff", play: "rock" }
  #     player_two = { name: "Peter", play: "rock" }
  #     expect( rps(player_one, player_two) ).to eq("Tie!")
  #   end
  # end
end














