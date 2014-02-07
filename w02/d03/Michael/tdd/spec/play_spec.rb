# require "spec_helper"
# require_relative "../lib/play"

# describe "#add" do 
#   it "adds two numbers together" do
#     expect(add(2,3)).to eq(5)
#   end 

#   it "adds two negative numbers together" do
#     expect( add(-2, -4) ).to eq(-6)
#   end 
# end

# describe "#odd" do
#   it "provides odd numbers if they exist" do 
#     expect( odd( [1,2,3] ) ).to eq( [1,3] )
#   end 

#   it "provides no odd numbers if none exist" do
#     expect( odd( [2,4,6] ) ).to eq( [] )
#   end 

#   it "provides an empty array if no values exist" do
#     expect( odd( [] ) ).to eq( [] )
#   end 
# end 

# describe "#palindrome" do
#   it "provides true if it is a palindrome" do 
#     expect( palindrome("hannah") ).to eq( true )
#   end 

#   it "provides false if it is not a palindrome" do 
#     expect( palindrome("michael") ).to eq( false )
#   end

#   it "provides true regardless of case" do
#     expect( palindrome("HaNNah") ).to eq( true)
#   end 

#   it "is not a palindrome if there is one character" do
#     expect( palindrome("a") ).to be_false
#   end

#   it "provides true if there are spaces at the end" do
#     expect( palindrome("ABBA ") ).to be_true
#   end
# end 


# describe "#rps" do
#   let(:player_one) do
#     { name: "Jeff", play: "scissors" }
#   end 
#   let(:player_two) { { name: "Peter", play: "paper" } }

#   context "player one has the winning hand" do
#     it "wins the game!" do
#       expect( rps(player_one(), player_two) ).to eq("Jeff Wins!")
#     end
#   end 

#   context "player two has the winning hand" do
#     before {player_two[:play] = "rock"}
  
#     it "wins the game!" do
#       expect( rps(player_one, player_two) ).to eq("Peter Wins!")
#     end 
#   end
# end 

