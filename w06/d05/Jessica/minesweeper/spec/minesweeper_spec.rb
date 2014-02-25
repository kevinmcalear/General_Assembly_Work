require 'rspec'
require_relative '../lib/minesweeper'

describe Game do
  subject(:game){Game.new(5, 5)}

  describe "#board" do
    it "creates a board that is 5 x 5" do 
    expect(game.board.flatten.count).to eq(25)
    end
  end

  describe "#assign_bombs" do
    it "randomly assigns bombs" do
    game.assign_bombs(4)
    bombs = []
    game.board.each{|row| row.each{|col| bombs << col == "bomb" }}
    expect(bombs).to include ("bomb")
    end
  end
end

describe Cell do
  subject(:cell){Cell.new}

  describe "#clicked" do
    it "shows that cell is clicked" do
      expect(cell.clicked).to be_true
    end
  end
  describe "#flagged" do
    it "flags a cell" do
      expect(cell.flagged).to be_true
    end
  end
  describe "#neighbors" do
    it "neighbors is an array" do
      expect(cell.neighbors).to be_kind_of(Array)
    end
  end

  # describe "#bomb" do
  #   assign_bombs(3)
  #  expect{@neighbors.select{|cell| cell== "bomb"} 
  #   it ""
  # end




end