require "spec_helper"
require_relative "../lib/play"

describe "#add" do 
  it "adds two numbers together" do
    expect( add(2,3) ).to eq(5)
  end
  it "adds two negative numbers together" do
    expect( add(-2,-4) ).to eq(-6)
  end
end





describe("#odds") do

  it("takes an array and only returns the odd values") do
    expect( odds([1,2,3]) ).to eq( [1,3] )
  end

  it "can select from an array with no odds" do
    expect( odds([2,4,6]) ).to eq( [] )
  end

  it "can select from an array with no elements" do
    expect( odds([]) ).to eq( [] )
  end

end

describe "#is_palendrom?" do

  it "takes a word and returns true if it is a palandrom." do
    expect( is_palendrom?("poop") ).to be_true
  end

  it "takes a word that is not a palandrom and returns false." do
    expect( is_palendrom?("obuer") ).to eq( false )
  end

  it "isn't a palindrome if there is only one character." do
    expect(is_palendrom?("l") ).to eq( false )
  end

  it "is a palindrome if some of the characters are uppercase." do
    expect( is_palendrom?("aBba")).to eq( true )
  end

  it "is a palandrom if there are spaces at the end" do
    expect( is_palendrom?("bbb ")).to eq( true )
  end

end

describe "#rps" do

  let(:player_one) { { :name => "Jeff", :play => "scissors"} }
    
  let(:player_two) do
    { :name => "Peter", :play => "paper"}
  end

  context "player one has the winning hand" do
    it "wins the game!" do
      # YOU CAN DO IT THIS WAY TOO ##################    
      # player_one = { :name => "Jeff", :play => "scissors"} ##
      # player_two = { :name => "Peter", :play => "paper"} ##
      ###########################################
      expect( rps(player_one(), player_two) ).to eq("Jeff wins!")
    end 
  end

    context "player two has the winning hand" do
      before do
        player_two[:play] = "rock"
      end

    it "wins the game!" do
      # player_one = { :name => "Jeff", :play => "scissors"}
      # player_two = { :name => "Peter", :play => "rock"}
      expect( rps(player_one, player_two) ).to eq("Peter wins!")
    end 
  end

      context "players tie" do
        before do
        player_two[:play] = "scissors"
      end

    it "ties the game!" do
      # player_one = { :name => "Jeff", :play => "scissors"}
      # player_two = { :name => "Peter", :play => "scissors"}
      expect( rps(player_one, player_two) ).to eq("It's a tie folks!")
    end 
  end


end





