require 'rspec'
require_relative '../lib/conway'

describe Game do
  let(:game) {Game.new(3)}

  it "should return size of array" do
    expect( game.board.size ).to eq(3)
  end

  it "should tell if a cell is dead or alive" do
  expect( ["alive", "dead"] ).to include(game.board[0][1])
end

  describe "#neighbors" do
    it "should return the amount of neighbors" do
      expect( game.neighbors(1, 1) ).to eq(8)
    end
  end

  describe "#num_neighbors_alive" do 
    it "should return the number of alive neighbors " do
      expect( game.num_neighbors_alive )
end