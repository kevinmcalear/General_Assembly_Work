require 'rspec'
require_relative '../lib/sweeper.rb'

describe Game do
  subject(:game) {Game.new(7)}

  it"should great a new board" do
    expect(game.board.count).to eq(7)
    expect(game.board[0].count).to eq(7)
  end

  it "should build a board of objects" do
    expect(game.board.flatten.first).to be_kind_of(Space)
  end

  describe"#assign_bomb" do
    before do
      game.assign_bomb(0,3)
      game.assign_bomb(2,4)
      game.assign_bomb(4,5)
    end

    it "should assign 3 bombs" do
      expect(game.board[0][3].render).to eq("_B_")
      expect(game.board[2][4].render).to eq("_B_")
      expect(game.board[4][5].render).to eq("_B_")
    end
  end

  describe "#assign_bombs_randomly" do
    it "should assign the bombs randomly" do
      game2 = Game.new(7)
      game.assign_bombs_randomly
      game2.assign_bombs_randomly
      expect(game.display).not_to eq(game2.display)
    end
  end  

  describe "#neighbors" do
    before do 
      @game3 = Game.new(7)
      @game3.assign_bomb(0,3)
    end

    it "should return the number of bombs for a spot" do
      print @game3.display
      expect(@game3.neighbors(1,3)).to eq(1)
    end
  end

end


  describe Space do
    subject(:cell) {Space.new}

    it "should start as false" do
      expect(cell.is_bomb?).to be_false
    end

    describe"#clicked_on?" do
      it "should start as false" do 
        expect(cell.clicked_on?).to be_false
      end
    end

    describe "clicked" do
      before do
        cell.clicked
      end
      it "changes the state" do
        expect(cell.clicked_on?).to be_true
      end
    end

    describe "render" do
      space = Space.new
      expect(space.render).to eq("___")
    end

  end










