require 'spec_helper'
require_relative '../lib/minesweeper'
require 'pry'

describe Minesweeper do 
  let(:game) { Minesweeper.new }
  
  it "has an 8x8 board" do
    expect(game.board[0].count).to eq(8)
    expect(game.board.count).to eq(8)
  end
  

  describe "#set_mines" do
    subject(:set_game) {Minesweeper.new}
    
    it "gives 10 unique mine coordinates" do
      game.set_mines
      expect(game.mine_positions.count).to eq(10)
    end
  end

  describe "#mine_positions" do
    it "has access to mine positions" do
      game.set_mines
      expect(game.mine_positions.count).to eq(10)
    end
  end

  describe "#has_mine?" do
    it "checks it cell has mine" do
      game.set_mines
      mine = @mine_positions[0]
      expect(game.board[mine[0]][mine[1]].has_mine?).to be_true
    end
  end
end  


describe Cell do
  let(:cell) {Cell.new}

  describe "::new" do
    let(:game) { Minesweeper.new }
    it "verifies that it is kind of cell" do
      expect(game.board[6][4]).to be_a(Cell)
    end
  end

  describe "#is_clicked?" do
    it "starts cells as not clicked" do
      expect(cell.is_clicked?).to be_false
    end
  end

end


=======
=======
>>>>>>> 08c49673e36cdf443d068febc43d0ea1a3918f7f
require 'pry'
require 'spec_helper'
require_relative '../lib/minesweeper'

describe Minesweeper do
  subject(:game) { Minesweeper.new(8,8,10) }

  describe "::new" do
    it "initializes a board of cells" do
      expect(game.board[7][7]).not_to raise_error
    end

    describe "#mines" do
      it "returns the initial number of mines on the board" do
        expect(game.mines).to eq(10)
      end
    end
  end


  describe "#cells_with_mines" do
    it "has contains the list of cells that have mines" do
      expect(game.cells_with_mines).to be_a Array
    end
  end

  describe "#set_mines" do
    before do
      game.set_mines
    end

    it "sets the coordinates of the mines" do
      expect(game.cells_with_mines[0][0]).to be_a Integer
    end

    it "returns unique coordinates for each mine" do
      expect(game.cells_with_mines.length).to eq 10
    end
  end

  
  
end

describe Cell do
  subject(:cell) { Cell.new(5,4) }
  subject(:game) { Minesweeper.new(8,8,10) }
  
  describe "#::new" do
    it "is a space on the board" do
      expect(game.board[0][0]).to be_a Cell
    end

    describe "#row" do
      it "has a row" do
        expect(cell.row).to eq 5
      end
    end

    describe "#column" do
      it "has a column" do
        expect(cell.column).to eq 4
      end
    end
  end

  describe "#flipped?" do
    it "initializes as false" do
      expect(cell.flipped?).to be_false
    end
  end

  describe "#flip" do
    it "changes the cell's flipped state" do
      cell.flip
      expect(cell.flipped?).to be_true
    end
  end

  describe "#is_mine?" do
    it "returns whether or not the cell is a mine" do
      game.cells_with_mines << [0,0]
      cell = Cell.new(0,0)
      expect(game.is_mine?(cell.row, cell.column)).to be_true
    end
  end

  describe "#number_of_neighbor_mines" do
    context "the tested cell has 8 neighbors and is not a mine" do
      it "returns how many neighbors have mines" do
        game.cells_with_mines << [3,1]
        game.cells_with_mines << [4,2]
        game.cells_with_mines << [4,1]
        cell = Cell.new(3,2)
        expect(game.number_of_neighbor_mines(cell)).to eq 3
      end
    end

    context "the tested cell has 8 neighbors and is a mine" do
      it "returns how many neighbors have mines" do
        game.cells_with_mines << [3,1]
        game.cells_with_mines << [4,2]
        game.cells_with_mines << [4,1]
        game.cells_with_mines << [3,2]
        cell = Cell.new(3,2)
        expect(game.number_of_neighbor_mines(cell)).to eq 3
      end
    end

    context "the tested cell is a corner" do
      it "returns how many neighbors have mines" do
        game.cells_with_mines << [1,1]
        game.cells_with_mines << [1,0]
        cell = Cell.new(0,0)
        expect(game.number_of_neighbor_mines(cell)).to eq 2
      end

      it "returns how many neighbors have mines" do
        game.cells_with_mines << [7,6]
        game.cells_with_mines << [6,7]
        cell = Cell.new(7,7)
        expect(game.number_of_neighbor_mines(cell)).to eq 2
      end
    end

    context "the tested cell is on an edge" do
      it "returns how many neighbors have mines" do
        game.cells_with_mines << [1,2]
        game.cells_with_mines << [0,2]
        cell = Cell.new(0,3)
        expect(game.number_of_neighbor_mines(cell)).to eq 2
      end

      it "returns how many neighbors have mines" do
        game.cells_with_mines << [6,2]
        game.cells_with_mines << [7,4]
        cell = Cell.new(7,3)
        expect(game.number_of_neighbor_mines(cell)).to eq 2
      end

      it "returns how many neighbors have mines" do
        game.cells_with_mines << [3,1]
        game.cells_with_mines << [4,1]
        cell = Cell.new(4,0)
        expect(game.number_of_neighbor_mines(cell)).to eq 2
      end

      it "returns how many neighbors have mines" do
        game.cells_with_mines << [3,6]
        game.cells_with_mines << [5,7]
        cell = Cell.new(4,7)
        expect(game.number_of_neighbor_mines(cell)).to eq 2
      end
    end
  end




end