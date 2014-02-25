require 'spec_helper'
require_relative "../lib/minesweeper"

describe Minefield do 
  subject(:the_field) { Minefield.new }

  describe "#initialize" do
    it "creates a default field that is at least 8 by 8 cells big, possibly bigger if the user specifies it" do
      expect( the_field.grid[7].length ).to eq(8)
    end
  end

  describe "#bomb_count" do
    before do
      the_field.plant_bombs
    end

    it "checks if there are 10 bombs in the field" do
       expect( the_field.bomb_count ).to eq(10)
    end
  end
end