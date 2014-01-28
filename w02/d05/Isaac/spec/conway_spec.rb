require_relative '../lib/conway'
require 'spec_helper'

describe "Life" do 
  let(:life) { Life.new }

  it "has a board and it is an array" do 
    expect(life.board).to be_kind_of(Array)
  end

  it "board is 4 by 4" do
    expect(life.board.count).to eq(4)
  end

  it "can find the neighbors of a cell" do 
    expect(life.neighbors(0,0).size).to eq(3)
    expect(life.neighbors(2,2).size).to eq(8)
  end

 
  before do 
    life.board[0][0] = 1
  end
  it "handles a live cell with a live cell with fewer than two live neighbors" do 
    expect(life.compute_cell(0,0)).to eq(0)
    expect(life.compute_cell(3,1)).to eq(1)
  end



  describe "#change_state" do
    it "says if the cell is alive or dead" do
      expect(life.change_state(0)).to eq(1)
    end

  end




end
