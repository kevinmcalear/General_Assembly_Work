require "spec_helper"
require_relative "../lib/odds"

describe "#odds" do
  it "returns all of the odd numbers in an array" do
    expect(odds([1,2,3])).to eq([1,3])
  end

  it "returns all of the odd numbers in an array" do
    expect(odds([2,4,6])).to eq([])
  end

  it "returns all of the odd numbers in an array" do
    expect(odds([])).to eq([])
  end

end


describe "#word" do
  it "returns true or false on whether or not it is a palindrome" do
    expect(word("racecar")).to eq(true)
  end

  it "returns true or false based on whether or not the word is a palindrome" do
    expect(word("blue")).to eq(false)
  end

  it "A one-letter string should not be a palindrome" do
    expect(word("a")).to be_false
  end
end
describe "#rps" do
  let(:player_one) do
    {name: "Jeff", play: "scissors"}
  end
  let(:player_two) do
    {name: "Peter", play: "paper"}
  end

  context "player one has the winning hand" do
    it "wins the game!" do
      expect(rps(player_one, player_two)). to eq("Jeff wins!")
    end
  end
  context "player two has the winning hand" do
    before do
      player_two[:play] = "rock"
    end
    it "wins the game!" do
      expect( rps(player_one,player_two)).to eq("Peter wins!")
    end
  end
end
