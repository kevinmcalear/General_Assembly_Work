require 'rspec'
require_relative '../lib/minesweeper.rb'
require 'pry'

describe Cell do
  describe "::new" do 
    cell = Cell.new
    it "is a cell" do 
      expect(cell.mine?).to eq false
      expect(cell.clicked?).to eq false
    end
  end
end

describe Minesweeper do 
  #made some changes
  cell = Cell.new
  minesweeper = Minesweeper.new(3, 3, 4)
  minesweeper.randomly_assign_mines  


  describe "#board" do 
    it "is an array" do
        expect(minesweeper.board.count).to eq 3
    end 
  end

  describe "#set_mine" do 
    it "sets mine value to true" do 
      cell.set_mine
      expect(cell.mine?).to eq true
    end
  end

  describe "#click_cell" do 
    it "clicks a specific cell" do 
      cell.click
      expect(cell.clicked?).to be_true
    end
  end

  describe "#randomly_assign_mine(number_of_mines)" do
    it "randomly assigns unique mines" do 
      expect(minesweeper.mine_counter).to eq 4
    end
  end

  describe "mine_checker" do 
    minesweeper.board[0][1][0].click
    it "ends game if mine is clicked" do  
      minesweeper.mine_checker(minesweeper.board[0][1][0])
      if minesweeper.board[0][1][0].mine?
        minesweeper.game.destroy
        expect(minesweeper.game.started?).to be_false
      end
    end
  end
  describe "#cell_neighbors"  do
    it "returns a cell's neighbors" do 
      expect(minesweeper.cell_neighbors(minesweeper.board[0][1][0]).count).to eq 5
    end
  end
  
  it "returns the number of neighbors which are bombs if a mine isn't clicked" do 
    if !minesweeper.board[0][1][0].mine? 
      # binding.pry
      unless(minesweeper.mine_neighbors.count) == 0
        expect(minesweeper.mine_neighbors.count).to be >= 0
      end
    end
  end
end

describe Game do 

  game = Game.new
  minesweeper = Minesweeper.new(4, 4, 6)
  minesweeper.randomly_assign_mines
  

  describe "::new" do

    it "creates a new game" do 
      expect(game.started?).to be_true
    end
  end

  describe "#destroy" do 
    it "ends the game" do 
      minesweeper.game.destroy
      expect(minesweeper.game.started?).to be_false
    end
  end
end


