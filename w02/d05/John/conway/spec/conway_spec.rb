require 'spec_helper'
require_relative '../lib/conway'
require 'pry'

describe Game do
  let(:game) { Game.new }

  it "should have an initial state" do
    expect(game.initial_board[0][2]).to eq("alive")
  end

  it "has an initial state of finite size" do
    expect(game.length).to eq(3)
  end

  describe "#tick" do
    
    describe "#number_of_neighbors_alive" do
      
      it "should find how many neighbors are alive" do
        expect(game.number_of_neighbors_alive(0,0)).to eq(1)
        expect(game.number_of_neighbors_alive(0,1)).to eq(4)
        expect(game.number_of_neighbors_alive(0,2)).to eq(2)
        expect(game.number_of_neighbors_alive(1,0)).to eq(3)
        expect(game.number_of_neighbors_alive(1,1)).to eq(5)
        expect(game.number_of_neighbors_alive(1,2)).to eq(3)
        expect(game.number_of_neighbors_alive(2,0)).to eq(1)
        expect(game.number_of_neighbors_alive(2,1)).to eq(4)
        expect(game.number_of_neighbors_alive(2,2)).to eq(2)
      end
    end

    describe "#change_board" do

      it "should decide if a cell lives or dies" do
        expect( game.change_board(0,0) ).to eq("dead")
        expect( game.change_board(0,1) ).to eq("dead")
        expect( game.change_board(0,2) ).to eq("alive")
        expect( game.change_board(1,0) ).to eq("alive")
        expect( game.change_board(1,1) ).to eq("dead")
        expect( game.change_board(1,2) ).to eq("alive")
        expect( game.change_board(2,0) ).to eq("dead")
        expect( game.change_board(2,1) ).to eq("dead")
        expect( game.change_board(2,2) ).to eq("alive")
      end
    end

    describe "#temp_board" do
      it "should build a new multi-dimensional array" do
      # expect( game.tick ).to change { game.temp_board[0][0] }.from("alive").to("dead")
      expect( game.temp_board[0][0] ).to eq("alive")
      expect( game.tick ).to eq("dead")
    end
    end
  end
end