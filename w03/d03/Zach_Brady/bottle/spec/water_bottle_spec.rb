require_relative "../lib/water_bottle.rb"
require "spec_helper"

describe "Water Bottle" do 
  let(:bottle) {Water_Bottle.new}

  describe "an instance" do 
    it "starts out empty" do
      expect( bottle.contains ).to eq(0)
    end
  end

  describe "go_to_fountain" do

    it "can be filled up" do
      expect( bottle.go_to_fountain ).not_to raise_error
      expect( bottle.contains ).to eq(1)
    end
  end

  describe "hydrate" do

    it "can be drunk from" do
      expect( bottle.drink ).not_to raise_error
      expect( bottle.contains < 1).to be_true 
    end
    it "cannot contain a negative amount of water" do
      expect( bottle.contains ).to eq(0)
      bottle.go_to_fountain
      bottle.drink
      bottle.drink
      bottle.drink
      bottle.drink
      bottle.drink
      bottle.drink
      bottle.drink
      expect( bottle.contains ).to eq(0)
    end
  end
end