require "spec_helper"
require_relative "../lib/play"

describe "#add" do
  it "adds two numbers together" do
    expect(add(2,3)).to eql(5)
  end

  it "adds two negative numbers together" do
    expect( add(-2, -4)).to eql(-6)
  end
  
end

describe "#odds" do
  it "handles some odd numbers" do
    expect( odds([1,2,3])).to eql([1,3])
  end

  it "handles an array with no odds" do
    expect( odds([2,4,6])).to eql([])
  end

  it "handles an empty array" do 
    expect( odds([])).to eql([])
  end
end

describe "#palindrome?" do
  it "handles a blank" do
    expect( palindrome?("")).to eql(false)
  end

  it "returns false for a single letter" do
    expect( palindrome?("a")).to eql(false)
  end

  it "detects a longer palindrome" do
    expect( palindrome?("racecar")).to be_true
  end

  it "returns false for a non-palindrome" do
    expect( palindrome?("dinosaur")).to be_false
  end

  it "evaulates palindromes where some letters capital" do
    expect( palindrome?("AbBa")).to be_true
  end

  it "is a palindrome if there are spaces at the end" do
    expect( palindrome?("racecar ")).to be_true
  end
end


describe "rock,paper,scissors" do
  let(:player_one) do
    { name: "Jeff", play: "scissors"}
  end
  let(:player_two) do
    { name: "Peter", play: "paper"}
  end

  context "player one wins" do
    it "wins the game!" do
      player_one = { name: "Jeff", play: "scissors"}
      player_two = { name: "Peter", play: "paper"}
      expect(rps(player_one, player_two)).to eq("Jeff wins!")
    end
  end

  context "player two has the winning hand" do
    before do
      player_two[:play] = "rock"
    end

    it "wins the game!" do
      expect(rps(player_one, player_two)).to eq("Peter wins!")
    end

  end




end