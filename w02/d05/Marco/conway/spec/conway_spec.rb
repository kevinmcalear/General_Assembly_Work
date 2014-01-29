require 'spec_helper'
require_relative '../lib/conway'

describe TheCell do
  subject(:cell) {TheCell.new}
  describe "#live_die" do |variable|
    it "changes between dying or living" do 
      expect(cell.alive?).to eq(false)
      expect(cell.live_die).not_to raise_error
      expect(cell.alive?).to eq(true)
    end
  end

  # describe "#alive?" do
  #   it "can be alive or not" do 
  #     expect(cell.alive?).to eq(true)
  #   end
  # end
  
end

describe Grid do
  subject(:grid) {Grid.new(3,3)}
  subject(:big_grid) {Grid.new(6,6)}

  describe "#board" do
    it "makes the board an array" do 
      expect( grid.board).to be_kind_of(Array)
    end
    
    it "makes a board size from the user input using height and width" do 
      expect(grid.board.count).to eq(3)
      expect(big_grid.board.count).to eq(6)
    end

    it "iterates through 3 random cells to change their value" do
      expect(grid.board.random).to exactly(3).times

    end
  end


end
