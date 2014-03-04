require 'spec_helper'
require_relative '../lib/minesweeper'
require 'pry'

describe Minesweeper do 
  let(:game) { Minesweeper.new }
  
  it "has an 8x8 board" do
    expect(game.board[0].count).to eq(8)
    expect(game.board.count).to eq(8)
  end
  

  describe "#set_mines" do
    subject(:set_game) {Minesweeper.new}
    
    it "gives 10 unique mine coordinates" do
      game.set_mines
      expect(game.mine_positions.count).to eq(10)
    end
  end

  describe "#mine_positions" do
    it "has access to mine positions" do
      game.set_mines
      expect(game.mine_positions.count).to eq(10)
    end
  end

  describe "#has_mine?" do
    it "checks it cell has mine" do
      game.set_mines
      mine = game.mine_positions[0]
      expect(game.board[mine[0]][mine[1]].has_mine?).to be_true
    end
  end
end  


describe Cell do
  let(:cell) {Cell.new}

  describe "::new" do
    let(:game) { Minesweeper.new }
    it "verifies that it is kind of cell" do
      expect(game.board[6][4]).to be_a(Cell)
    end
  end

  describe "#is_clicked?" do
    it "starts cells as not clicked" do
      expect(cell.is_clicked?).to be_false
    end
  end

end


