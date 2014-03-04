require 'spec_helper'
require_relative '../lib/minesweeper'

describe "Cell" do
  let (:cell) {Cell.new}

  it "initializes the cell's clicked state as unclicked" do
    expect(cell.clicked?).to be_false
  end
  
  it "initializes whether the cell has a bomb" do
    expect(cell.bomb?).to be_false
  end

end

describe "Board" do
  let(:board) {Board.new}

  it "has 8 rows" do
    expect(board.grid.size).to eq(8)
  end

  it "has 8 columns" do
    expect(board.grid[0].size).to eq(8)
  end

  it "is filled with cells" do
    expect(board.grid[4][2]).to be_instance_of Cell
  end

  it "has 10 bombs" do
    count = 0
    board.grid.each_with_index do |row, row_num|
      board.grid[row_num].each do |cell|
        if cell.bomb
         count += 1
        end
      end
    end
  expect(count).to eq 10
  end
end