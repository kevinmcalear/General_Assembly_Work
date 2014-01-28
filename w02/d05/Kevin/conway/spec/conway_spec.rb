require 'spec_helper'
require_relative '../lib/conway'

describe "Cell" do
  let(:cell) {Cell.new}

  describe "#alive?" do
    it "tells you if the cell is alive or not" do
      expect(cell.alive?).to be_false
    end
  end

  describe "#kill_live" do
    it "kills or brings to live a cell!!!!" do
      expect(cell.alive?).to be_false
      expect(cell.kill_live).not_to raise_error
      expect(cell.alive?).to be_true
    end
  end
end

describe "Board" do
  let(:board) {Board.new(3,3)}
  let(:big_board) {Board.new(6,6)}

  describe "#board" do
    it "ensures the the board is an array of arrays" do
      expect(board.board).to be_kind_of(Array)
      expect(board.board[0]).to be_kind_of(Array)
    end

    it "ensures that the board is populated by cells" do
      expect(board.board[0][0]).to be_a(Cell)
    end

    it "allows a user to make any size board" do 
      expect(board.board.count).to eq(3)
      expect(big_board.board.count).to eq(6)
    end
  end

  describe "#stats" do
    it "returns an array of surrounding neighbors" do
      expect(board.stats(0,0)).to eq(3)
      expect(board.stats(1,0)).to eq(5)
      expect(board.stats(1,1)).to eq(8)
      expect(board.stats(3,3)).to eq(3)
      expect(board.stats(3,1)).to eq(5)
    end
  end


end