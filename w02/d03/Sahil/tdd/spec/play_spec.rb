# require "spec_helper"
# require_relative "../lib/play"
# #require_relative "../lib/odd"


# describe "#add" do 
#   it "adds two numbers together" do
#     expect(add(2,3)).to eq 5
#   end
#   it "adds two negative numbers together" do
#     expect( add(-2,-4) ).to eq (-6)
#   end
# end

# describe "#odd_finder" do
#   it "returns odds in an odd/even array" do
#     expect( odd_finder([1,2,3]) ).to eq [1,3]
#   end
#   it "returns blank arrays in an all even array" do
#     expect( odd_finder([2,4,6]) ).to eq []
#   end
#   it "returns blank arrays for blank arrays" do
#     expect( odd_finder([]) ).to eq []
#   end
# end

# describe "#palindrome?" do
#   it "returns false when odd" do
#     expect(even(3)).to eq false
#   end
#   it "returns true when even" do
#     expect(even(2)).to eq true
#   end
# end

# describe "#palindrome?" do
#   it "returns true for a palindrome" do
#     expect(palindrome?("racecar")).to eq true
#   end
#   it "returns false when it isn't a palindrome" do
#     expect(palindrome?("snosdb")).to eq false
#   end
#   it "returns true for capitalized words" do
#     expect(palindrome?("Bob")).to eq true
#   end
#   it "returns false for single character words" do
#     expect(palindrome?("a")).to eq false
#   end
#   it "returns true even with random white space" do
#     expect(palindrome?(" sas  ")).to eq true
#   end
# end

# describe "rock,paper,scissors" do
#   let(:player_one) do
#     {name: "Jeff", play: "scissors"}
#   end
#   let(:player_two) do
#     { name: "Peter", play: "paper"}
#   end

#   context "player one has the winning hand" do
#     it "wings the game!" do
#       # player_one = {name: "Jeff", play: "scissors"}
#       # player_two = {name: "Peter", play: "paper"}
#       expect( rps(player_one, player_two) ).to eq("Jeff wins!")
#     end
#   end

#   context "player one has the winning hand" do
#     it "wings the game!" do
#       # player_one = {name: "Jeff", play: "scissors"}
#       # player_two = {name: "Peter", play: "rock"}
#       expect( rps(player_one, player_two) ).to eq("Peter wins!")
#     end
#   end
# end




