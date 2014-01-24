# require "spec_helper"
# require_relative "../lib/play"

# describe "#add" do 
#   it "adds two numbers together" do 
#     expect( add(2,3) ).to eq(5)
#   end
  
#   it "adds two negative numbers together" do
#     expect( add(-2, -4) ).to eq(-6) # expect is a method, so there shouldn't be space between
#   end
# end

# describe ("#odd") do
#   it("selects odd number") do 
#     expect( odds[1,2,3] ). to eq( [1,3] )
#   end
#   it "can select from an array with no odds" do
#     expect( odds([]) ).to eq( [] )
#   end
#   it "can select from an array with no elements"
#     expect( odds([]) ).to eq( [] )
#   end
# end

# describe "#palindrome?" do 
#   it "is a palindrome" do 
#     expect( palindrome?("madam") ).to eq(false)
#   end

#   it "isn't a palindrome" do 
#     expect( palindrome?("jeff") ).to be_false
#   end

#   it  "is a palindrome if some characters are uppercase"
#     expect( palindrome?("aBba") ).to be_true
#  end

#   it "is a palindrome if there are spaces at the end"
#     expect( palindrome?("abba ")).to be_true will return error because space at the end is considered a character so when it reverses it will include that character
#   end
# end

# describe "#rps" do 
#   let(:player_one) do
#     { name: "Jeff", play: "scissors" }
#   end
#   let(:player_two) do 
#     { name: "Peter", play: "paper" }
#   end

#   context "player one has the winning hands" do 
#     it "wins the game!" do 
#       player_one = { name: "Jeff", play "scissors"}
#       player_two = { name: "Peter", play "paper"}
#     end
#   end

#   context "player two has the winning hand" do 
#     before do 
#       player_two[:play] = "rock"
#     end

#     it "wins the game!" do 
#       player_one = { name: "Jeff", play "scissors"}
#       player_two = { name: "Peter", play "rock"}
#     end
#   end
# end

# # def rps(player_one, player_two)
# #   beats = {
# #     "scissors" => "rock"
# #     "paper" => "scissors"
# #     "rock" => "paper"
# #   }
# # end

# ######################
  









