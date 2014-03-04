require 'spec_helper'
require_relative '../lib/minesweeper'

describe Board do
  subject(:board) { Board.new(4,5) }
  
  describe "#rows" do
    it "board has >0 rows" do
      expect(board.rows).to be > 0
    end
  end

  describe "#columns" do 
    it "has >0 columns" do
    expect(board.columns).to be >0
  end
end
end

describe Cell do
  subject(:cell){Cell.new}

  describe "#is_a_mine?" do
    it "tells us whether the cell is a mine, true or false" do
      expect(cell.is_a_mine).is_a?(TrueClass || FalseClass)
    end
  end

  describe "#clicked" do 
    it "cells can be clicked on" do 
      expect(cell.clicked).is_a?(TrueClass)
    end
  end

  describe "#neighbors" do
    it "neighbors is an array" do
      expect(cell.neighbors).to be_kind_of(Array)
    end
  describe "#mine_or_not"
    it "tells you if it's a mine" do 
      expect(cell.mine_or_not(@neighbors, 0)).to eq_true 
    end
   end   
  end


