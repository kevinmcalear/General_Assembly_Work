require "spec_helper"
require_relative "../lib/conway"

describe Game do 
  let(:game) { Game.new("1st game", [[0,1], [1, 0]) }


  describe "#name" do 
      it "the game has a name " do 
    expect(game.name).to eql("1st game")
  end
end

  describe "#initial_states" do 
    it "sets an inintial configuration" do 
      expect(game.initial_configuration).to include([[][]])
     end
 end    

# end


end