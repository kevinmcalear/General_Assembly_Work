require "spec_helper"
require_relative "../lib/game_of_life"

describe Cell do
  subject(:cell) {Cell.new}

  describe "#alive?" do
    it "should be alive or dead" do
      expect([false, true]).to include(cell.alive?)
    end
  end

  describe "#kill" do
    it "should make the cell die" do
      cell.kill
      expect(cell.alive?).to be_false
    end
  end

  describe "#its_alive" do
    it "should make the cell live" do
      cell.its_alive
      expect(cell.alive?).to be_true
    end
  end

  describe "#lives_next_gen= and #lives_next_gen" do
    it "should store a next state" do
      cell.kill
      cell.lives_next_gen = true
      expect(cell.lives_next_gen).to be_true
    end
  end

  describe "#update" do
    it "should update its alive status" do
      cell.kill
      cell.lives_next_gen = true
      cell.update
      expect(cell.alive?).to be_true
    end
  end

end


describe "Game of Life" do
  subject(:game) {Game_of_Life.new}

  describe "::new" do
    it "board is an array of arrays" do
      expect(game[0]).to be_a_kind_of(Array)
      expect([false, true]).to include(game[0][0].alive?)
    end
  end

  describe "#display" do
    it "should display the board" do
      expect(game.display).to be_a_kind_of(String)
    end
  end
end



