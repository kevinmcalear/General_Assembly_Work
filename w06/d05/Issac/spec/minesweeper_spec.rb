require_relative "../lib/minesweeper"
require "spec_helper"

describe 'Minesweeper' do 
  let(:game) {Game.new}

  it "has dimensions" do 
    expect(game.board.size).to eq(8)
    expect(game.board[0].size).to eq(8)
  end

  it "contains cells" do
    expect(game.board[0][0]).to be_kind_of Cell
  end

  it "populates mines" do 
    game.populate
    game.board.each do |num|
      num.each do |cell|
        expect(cell).to_not be_nil
        expect(cell.value).to be_kind_of(Fixnum)
      end
    end
  end
end

describe 'Cell' do 
  describe '#value' do 
    it "has a value" do
      expect(Cell.new.value).to be_kind_of(Fixnum)
    end
  end

  describe "#mine" do 
    it "either has a mine(1) or not(0)" do
      expect{[0,1].include?(Cell.new.mine)}.to be_true 
    end
  end

  describe '#clicked' do 
    it "starts off not clicked" do 
      expect(Cell.new.clicked?).to be_false 
    end
  end

  describe "can be flagged" do
    it "starts off not flagged" do 
      expect(Cell.new.flag).to be_false
    end
  end
end

describe 'User' do
  let(:cell){Cell.new}
  describe "#click" do 
    it "can click" do 
      User.new.click(cell) 
      expect(cell.clicked?).to be_true
    end
  end
end