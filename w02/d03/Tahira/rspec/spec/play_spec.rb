require "spec_helper"
require_relative "../lib/play"

describe "#add" do 
  it "adds two numbers together" do
    expect( add(2,3) ).to eq (5)
  end

  it "adds two numbers together" do
    expect(add(-2,-4)).to eq (-6)
  end
end

describe "#odds" do 
  it "takes the odd numbers from an array" do
    a = [1,2,3,4]
    b = [1,3]
    expect(odds(a)).to eq (b)
  end

 it "takes the odd numbers from an array" do
    expect(odds([2,4,6,8])).to eq ([])
  end
end 

describe "#palindrome?" do
  it "returns true if word is palindrome" do
    expect( palindrome?("racecar")).to eq (true)
  end

  it "returns true if word is palindrome" do
    expect( palindrome?("tahira")).to eq (false)
  end

  it "returns false if word is not palindrome" do
    expect( palindrome?("")).to eq (false)
  end

end

describe "#rps" do
  let(:player_one) do
    {name: "Jeff", play: "scissors"}
  end

  let(:player_two) do
    { name: "Peter", play: "paper"}
  end

  context "player one wins" do
    it "wins the game!" do
      expect(rps(player_one, player_two)).to eq("Jeff wins!")
    end
  end

  context "players two wins" do
    before do
      player_two[:play] = "rock"
    end

    it "wins the game!" do 
      expect(rps(player_one, player_two)).to eq("Peter wins!")
    end
  end

end
