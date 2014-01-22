require "spec_helper"
require_relative '../lib/play'

describe "#add"  do
  it "adds two positive numbers together" do 
    expect(add(2,3)).to eq(5)
  end
  it "adds two negative numbers together" do
    expect(add(-2, -3)).to eq(-5)
  end
end

describe("#odds") do 
  it("selects odd numbers") do 
    # odds([1, 2, 3]) = [1,3]
    expect( odds( [1, 2, 3] )).to eq( [1,3] )
  end
end

describe("#palindrome?") do 
  it("returns true for a simple case") do
    expect( palindrome?("eve") ).to eq( true )
  end
  it("returns false for a simple case") do 
    expect( palindrome?("car") ).to eq( false )
  end
  it("returns true regardless of capitalization") do 
    expect( palindrome?("Racecar") ).to eq( true )
  end
end

describe "#rps" do 
  let(:player_one) do 
    { name: "jeff", play: "scissors"}
  end
  let(:player_two) do
    { name: "Peter", play: "paper"}
  end

  context "player one has the winning hand" do
    it "wins the game!" do
      expect( rps(player_one, player_two) ).to eq("Jeff wins!")
    end
  end

  context "player two has the winning hand" do
    before { player_two[:play] = "rock" }
    it "wins the game!" do
      expect( rps(player_one, player_two) ).to eq("Peter wins!")
    end
  end

end















