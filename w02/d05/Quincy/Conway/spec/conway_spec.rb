require 'spec_helper'
require_relative '../lib/conway'

describe Board do
 let(:board){Board.new(4)}  
  
  it "sets the array at a certain size" do
    expect(board.board.count).to eq(4)
    expect(board.board[2].count).to eq(4)
  end
end

describe Cell do
  let(:cell){Cell.new}

  it "has cells" do
    expect(cell.cell).to eq("alive" || "dead")
  end

  it "can be alive" do
    expect(cell.alive).to eq("alive")
  end

  it "can be dead" do
    expect(cell.dead).to eq("dead")
  end

end

