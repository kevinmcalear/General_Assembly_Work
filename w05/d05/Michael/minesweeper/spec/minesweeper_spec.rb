require 'pry'
require 'rspec'
require_relative '../lib/minesweeper'
  
describe Board do
  let(:game) { Board.new(8,8) }
  describe "initial game setup" do
    it "the board, has 8 rows" do
      expect(game.spaces.count).to eq(8)
    end

    it "the board, has 8 cells per row" do
      binding.pry
      expect(game.spaces[0].count).to eq(8)
    end
    
    describe Cell do

      it "exists within the board"
        
        # expect([0,1]).to include(game.spaces[0][1].bomb) 
    end 

  end
end



