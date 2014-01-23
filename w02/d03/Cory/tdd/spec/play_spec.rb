require "spec_helper"
require_relative "../lib/play"

describe "#add" do
  
  it "adds two numbers together" do 
    expect(add(2,3)).to eq(5)
  end

  it "adds two negative numbers together" do 
    expect( add(-2, -4)).to eq(-6)
  end
end

describe "#odds" do 
  
  it "selects odd numbers" do
    expect( odds([1,2,3]) ).to eq([1,3])
  end
  
  it "can select from array with no odds" do
    expect( odds([2,4,6]) ).to eq([])
  end

  it "can select from array with no elements" do
    expect( odds([]) ).to eq([])
  end
end

describe "#pal" do 

  it "tests is pal" do
    expect( pal("racecar") ).to eq(true)
  end

  it "isn't a palindrome" do 
    expect( pal("car")).to eq(false)
  end

  it "isn't a pal if there is one char" do 
    expect( pal("a") ).to eq(false)
  end

  it "is a pal if some char are uppercassed" do
    expect( pal("aBBa")).to eq(true)
  end

  it "is a pal if there are spaces ad beginning or end" do 
    expect( pal("abba ") ).to eq(true)
  end
end

describe "#rps" do 

  let(:player_one) do
    { name: "Jeff", play: "scissors" }
  end
  let(:player_two) do 
    { name: "Peter", play: "paper"}
    end

  context "player one wins" do 
    it "wins the game!" do
     
      expect( rps(player_one, player_two)).to eq("Jeff wins!")
    end
  end

  context "player two wins" do 
    before do
      player_two[:play] = "rock"
    end
    it "wins the game!" do
      
      expect( rps(player_one, player_two)).to eq("Peter wins!")
    end
  end
end



