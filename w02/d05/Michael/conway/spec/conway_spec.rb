## Question:  What is the appropriate way to setup the test for the while loop? 

require 'rspec'
require_relative '../lib/conway'

describe Board  do
  let(:board) {Board.new}
  
  it "Board must exist" do
    expect(board).not_to raise_error
  end 

  it "Board must have 4 rows and 4 columns" do
    expect(board.row).to eq(4)
    expect(board.column).to eq(4)
  end 

  it "Board must have array" do 
    expect( board.array).to be_kind_of(Array) 
  end 

  context "determine the appropriate next_generation" do
  let(:board) {Board.new}
    before do 
      board.array[1][0].next_value= true
      board.array[3][2].next_value= true

      board.array[0][0].alive = true
      board.array[0][1].alive = true
      board.array[0][2].alive = false
      board.array[0][3].alive = false
      board.array[1][0].alive = true
      board.array[1][1].alive = true
      board.array[1][2].alive = false
      board.array[1][3].alive = false
      board.array[2][0].alive = true
      board.array[2][1].alive = true
      board.array[2][2].alive = false
      board.array[2][3].alive = false
      board.array[3][0].alive = false
      board.array[3][1].alive = false
      board.array[3][2].alive = true
      board.array[3][3].alive = false

      board.next_generation
      end 

      it "Board must determine the next generation of cells" do 
        expect( board.array[1][0].next_value ).to be_false
        expect( board.array[3][2].next_value ).to be_false
      end 

  end 
end

describe Cell do
  let(:cell) {Cell.new}

  it "Cell must be created" do 
    expect(cell).not_to raise_error
  end

  it "Cell must have a value for 'alive?'" do
    expect([true, false]).to include(cell.alive) 
  end 

  it "Cell must have a value for 'next_value'"do
    expect([true, false]).to include(cell.next_value)
  end 

end 