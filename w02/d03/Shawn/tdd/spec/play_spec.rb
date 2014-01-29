require "spec_helper"
require_relative "../lib/play"


describe "#add" do 
  it "adds two positive numbers together" do 
    expect(add(2,3)).to eq(5)
  end



  it "adds two negative numbers together" do
    expect( add(-2, -4) ).to eq(-6)
  end
end

describe "#odds" do 
  it " selects odd numbers" do
    expect(odd([1,2,3])).to eq([1,3])
  end
  it "returns an empty array" do 
  expect( odd( [2,4,6])).to eq( [] )
end
it "returns an empty array" do
  expect(odd( [])).to eq([])
end
end


describe "#palindrome_test" do 
  it "return true for a palindrome" do 
    expect( palindrome_test("racecar") ).to be_true
  end

  it "returns false for not a palindrome" do
    expect( palindrome_test("palindrome") ).to be_false
  end

  it "tests a palindrome sentence" do 
    expect( palindrome_test("Sore was I ere I saw Eros") ).to be_true
  end

  it "isn't a palindrome if there is one character" do 
    expect( palindrome_test("a") ).to be_false
  end

  it "is a palindrome if some characters are uppercase..." do 
    expect( palindrome_test("aBbA") ).to be_true
end

it "is a palindrome if there are spaces at the end..." do 
  expect( palindrome_test("racecar ") ).to be_true 
end

end


# describe "#rps" do



#   let(:player_one) do 
#     { name: "Jeff", play: "scissors" }
#   end

#   let(:player_two) { { name: "Peter", play: "paper" } }
#   end

#   context "player one has the winning hand" do
#     it "wins the game!" do 
#       expect( rps(player_one, player_two) ).to eq("Jeff wins!")
#     end
#     context "some nested child context" do 
#       #player_one is here

#     end

#     describe "something else" do 
#       # player_one is here too!
#     end
# end 

#   context "player two has the winning hand" do 
#     before do 
#       player_two[:play] = "rock"
#     end

#     it "wins the game!" do 
#       expect(rps(player_one, player_two) ).to eq("Peter wins!")
#     end
#   end


