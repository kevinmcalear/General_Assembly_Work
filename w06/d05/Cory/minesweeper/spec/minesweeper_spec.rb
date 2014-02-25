require 'spec_helper'
require_relative '../lib/minesweeper'

describe Minesweeper do
  
  describe "::new" do 
    it "starts a new game board" do
      expect(Minesweeper.new(3,3)).to be_true
    end
  end

  describe "::new" do 
    it "has 3 rows and 3 columns" do 
      
      expect(Minesweeper.new(3,3).board).to eq [[0, 0, 0], [0,0, 0], [0,0,0]]
    end
  end

  describe "#has_mines" do 
    it "has a mine in the top left position" do
      expect(Minesweeper.new(3,3).has_mines).to eq [[1, 0, 0], [0,0, 0], [0,0,0]]
    end
  end

end

describe Cell do 
  describe "::new" do 
    it "has a value and a state (clicked/not clicked)" do
      expect(Cell.new(0, "not clicked")).to eq [0, "not clicked"]
    end
  end
end