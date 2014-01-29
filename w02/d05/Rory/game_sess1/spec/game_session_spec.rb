require "spec_helper"
require_relative "../lib/game_session1"

describe Cell do
  let(:cell) { Cell.new }

  describe "#status" do
    it "tests if the status is a boolean" do
      [true, false].include?(cell.status)
    end
  end

  describe "#change" do
    it "tests if the cell status changed" do
    expect(cell.change).not_to raise_error
  end
end
end

describe Game do
  let(:game) { Game.new(3,3) }

  describe "#board" do
    it "contains cells" do
      expect(game.board[0][0]).to be_kind_of Cell
    end
  end

  describe "#neighbors" do
    it "knows which cells surround a given cell (x,y)" do
      expect(game.neighbors([0][0].count).to eq 3
    end
  end
end