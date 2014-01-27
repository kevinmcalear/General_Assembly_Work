require 'spec_helper'
require_relative '../lib/gladiator'

describe Gladiator do 
    it "adds the Gladiator Name" do
      expect (Gladiator.new("Marcus"))
    end
  end

  # describe Gladiator do
  #   it "adds the Gladiator Weapon" do
  #     expect (Gladiator.new( ["Trident", "Spear", "Club"] )
  #   end
  # end

describe Arena do
  it "adds the Arena name" do
    expect (Arena.new("GladiaZone"))
  end

# describe "#fight" do #
#     let(:gladiator_1) do
#       { name:"Jeff", play: "scissors" }
#     end
#     let(:player_two) {  { name: "Peter", play: "paper" } }
 
  

#     context "player one has the winning hand" do
#     it "wins the game!" do
#       expect(rps(player_one, player_two) ).to eq("Jeff  wins!")
#     end
#   end


#   context "player two has the winning hand" do
#     before do
#       player_two[:play] = "rock"
#     end

#      it "wins the game!" do
#     expect( rps(player_one, player_two) ).to eq("Peter wins!")
#     end
#   end
# end
end

  