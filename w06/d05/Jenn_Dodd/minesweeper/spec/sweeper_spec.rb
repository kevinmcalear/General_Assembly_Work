require 'spec_helper.rb'
require_relative '../lib/sweeper.rb'


describe Board do
  let(:game){Board.new(7)}

  describe "::new" do
    it "creates the board" do
      expect(game.board.count).to eq(7)
      expect(game.board[1].count).to eq(7)
    end

    it "starts being played" do
      expect(game.status).to eq("play")
    end
  end

  describe "#bazinga" do
    it "creates random bomb placement of a size of your choosing" do
      game.bazinga(3)
      bombs = []
      game.board.each {|row| row.each {|col| bombs << col == "bomb"}}
      expect(bombs.compact.count).to eq(3)
    end
  end

    # it "each cell tells you how many bombs are neighbors" do
    #   expect(game.board.flatten).not_to include(nil)
    # end
end

describe Cell do
  let(:cell){Cell.new}

  describe "::new" do 
    it "is not a bomb" do
    expect(cell.bomb?).to be_false 
    end

    it "is not clicked" do
      expect(cell.clicked?).to be_false
    end

    it "is not flagged" do
      expect(cell.flagged?).to be_false
    end

    it "its bomb count is nil" do
      expect(cell.bomb_count).to be_nil
    end
  end

  describe "#neighbors" do
    it "finds a cell's neighbors and puts them in an array" do
      expect(cell.neighbors[0]).to be_kind_of(Cell)
    end
  end




end








