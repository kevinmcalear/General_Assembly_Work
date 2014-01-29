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

    expect(odds([1, 2, 3])).to eq([1, 3])
  end

  it "can select from an array w/ no odds" do

    expect(odds([2, 4, 6])).to eq([])
  end

  it "can select from an array with no elements" do

    expect(odds([ ])).to eq([])
  end
end

describe("#palindrome?") do
  it "returns true for words that are palindromes" do

    expect(palindrome?("eve") ).to eq(true) #could also type .to eq(true) as .to be_true
  end

  it "returns false for words that are palindromes" do

    expect(palindrome?("even") ).to be_false #could also type .to eq(false) as .to be_false
  end

  it "returns false for single letters" do

    expect(palindrome?("a") ).to be_false #could also type .to eq(false) as .to be_false
  end

  it "returns true with spaces" do
    expect(palindrome?("abba ") ).to be_true

  end

end


# describe("#rps") do
#   # let(:player_one) do
#   #   {name: "Jeff", play: "scissors"}
#   # end
#   # let(:player_two) do
#   #   {name: "Peter", play: "paper"}
#   # end

#   context "player one wins" do
#     it "wins the game!" do
#       player_one = {name: "Jeff", play: "scissors"}
#       player_two = {name: "Peter", play: "paper"}
#       expect( rps(player_one)).to eq("Jeff wins!")
#     end
#   end

#   context "player two wins" do
#     it "wins the game!" do
#       player_one = {name: "Jeff", play: "scissors"}
#       player_two = {name: "Peter", play: "rock"}
#       expect( rps(player_two)).to eq("Peter wins!")
#     end
# end
# end

describe "#rps" do
  let(:player_one) do
    { name: "Jeff", play: "scissors" }
  end
  let(:player_two) { { name: "Peter", play: "paper" } }
    
  context "player one has the winning the hand" do
    it "wins the game!" do
      expect( rps(player_one(), player_two) ).to eq("Jeff wins!")
    end
  end

  context "player two has the winning hand" do
    before { player_two[:play] = "rock" }

    it "wins the game!" do
      expect( rps(player_one, player_two) ).to eq("Peter wins!")
    end
  end
end




