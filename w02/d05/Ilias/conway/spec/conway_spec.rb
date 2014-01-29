require "spec_helper"
require_relative "../lib/conway"

describe "Life" do
  subject (:life){Life.new}
    describe "#table" do
      it "returns an array that is populated with 1s and 0s" do
        expect([0,1]).to include(life.table[0][1])
    end
  end

# Any live cell with fewer than two live neighbours dies, as if caused by under-population.

describe "#define_cell" do
  it "iterates through the @table array, and return the opposite value for each" do 
    expect(life.define_cell[0][0]).not_to eq(life.table[0][0])
end
end

describe "#sum_of_neighbors"
  it "returns the sum of a cell's neighbours" do
    expect(life.sum_of_neighbors(life.table[1][1])).to eq(4)
  end
end