require 'spec_helper'
require_relative '../lib/minesweeper'

describe Board do  
  let(:game){ Board.new(8, 8)}
  describe "#create_board" do
    it "instantiates a new board" do 
     expect(game.board).to be_kind_of(Array)
    end

    it "is a board with 8 rows" do
      expect(game.board.count).to eq(8)
    end

    it "each row has 8 cells" do
      expect(game.board[0].count).to eq(8)
    end

    it "has mines" do
      expect(game.mine).to be_true
    end
  end

end

describe Cell do

  let(:cell){ Cell.new}

  describe "#mine?" do 
    it "a mine has a value of 1" do
      expect([0,1]).to include(cell.mine)
    end
  end

end