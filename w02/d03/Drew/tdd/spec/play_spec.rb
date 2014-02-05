require "spec_helper"
require_relative "../lib/play"


describe ("#odds") do
  it ("selects odd numbers") do
    expect( odds([1,2,3]) ).to eq( [1,3] )
  end

  it "can select from an array with no odds" do
    expect( odds([2,4,6]) ).to eq([])
  end

  it "returns an empty array when given no entries" do
    expect( odds([]) ).to eq([]) 
  end
end


describe ("#palin") do
  it "isn't a palendrome" do
    expect( palin("drew")).to be_false
  end

  it "returns false if the word is a palendrome" do
    expect( palin("racecar")).to be_true
  end

it "returns false if it's just one word" do
    expect( palin("a")).to be_false
  end

  it "is a palin if some words are upcase" do
    expect( palin("aBbA")).to be_true
  end

  it "is a palin if there are spaces at the end" do
    expect( palin("abba ")).to be_true
end
end


describe "rps" do
  let(:player_one) do
    { name: "Jeff", play: "scissors" }
  end
  let(:player_two) { { name: "Peter", play: "paper"} } 
  # can define the lets either way. same idea as blocks   

  context "player one has the winning hand" do
    it "wins the game!" do
      expect( rps(player_one, player_two) ).to eq("Jeff wins!")
    end
  end

  context "player two has the winning hand"do
    before do
      player_two[:play] = "rock"
    end
  it "wins the game!" do
    expect( rps(player_one, player_two) ).to eq("Peter wins!")
  end
end

end
















