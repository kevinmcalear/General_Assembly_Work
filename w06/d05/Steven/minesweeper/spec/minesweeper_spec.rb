require 'spec_helper'
require_relative '../lib/minesweeper'
require 'pry'

describe Grid do
let(:game){Grid.new}
  describe '#grid_mee' do
    it "creates an array of arrays" do
      expect(game.grid_mee).to be_kind_of(Array)
    end
  end

  describe "#seed_mines" do
    ##FIXME
    # it "randomly selects spaces to seed mines" do
    #   instance1 = game.seed_mines(game.grid_mee)
    #   instance2 = game.seed_mines(game.grid_mee)
    #   instance1.should_not eq(instance2)
    # end
  end
end

describe Cell do
let(:cell){Cell.new}
  describe '#state' do
    it "begins life unclicked" do
      expect( cell.state ).to be_false
    end
  end
  describe '#click' do
    it "changes the click state of a cell to true" do
      cell.click
      expect(cell.state).to be_true
    end
  end

  describe "#is_mine?" do
    it "starts not as a mine" do
      expect(cell.is_mine?).to be_false
    end
  end

  describe "#set_mine" do
    it "becomes a mine" do
      cell.set_mine
      expect(cell.is_mine?).to be_true
    end
  end


end





