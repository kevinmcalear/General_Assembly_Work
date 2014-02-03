require 'spec_helper'
require_relative '../lib/conway'


describe Cell do 
  let(:cell) {Cell.new}

  it "starts off dead" do
    expect(cell.alive).to eq(0)
  end

  describe "#live_die" do
    it "switches cell to alive or dead" do
      expect( cell.live_die ).to eq (1)
    end
  end

end

describe Game do
  let(:game) {Game.new}

  describe "#board" do
    it "confirms the board is an array" do
      expect( game.board ).to be_kind_of(Array)
    end

    describe "#populate" do
      it "brings a random sample of cells back to life" do
        expect( game.start.sample).to be<=1
      end

      it "maps 1 or 0 to each value in array" do
        expect( game.board.map {|value| value = game.board.sample}).to be_eq(1 ||  0)
      end
    end
    s
  end



end