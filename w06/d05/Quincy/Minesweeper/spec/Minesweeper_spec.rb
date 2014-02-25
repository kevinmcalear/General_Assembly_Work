require 'rspec'
require_relative '../lib/Minesweeper.rb'

describe "#board" do
  it "has cells" do
    expect(Board.new.has_cells).to be_true
  end

  it "it is a grid" do
    expect(Board.new.is_grid).to be_instance_of Array
  end

  it "has 8 rows" do
    expect(Board.new.grid_rows).to eq(8)
  end

  it "has 8 colums" do
    expect(Board.new.grid_columns).to eq(8)
  end
end

describe "#cells" do
  it "can have a bomb" do
    expect(Cells.new.bomb?(true)).to be_true
  end

  it "may not have a bomb" do
    expect(Cells.new.bomb?(false)).to be_false
  end
end
