require 'spec_helper.rb'
require_relative '../lib/water_bottle.rb'

describe WaterBottle  do
  subject(:bottle) {WaterBottle.new}

  describe "::new" do
    it "should start empty" do
      expect(bottle.empty?).to be_true
      expect(bottle.sips).to eq(0)
    end
  end

  describe "#fill" do
    it "should fill up and not be empty" do
      bottle.fill
     expect(bottle.empty?).to be_false 
     expect(bottle.sips).to eq(3)     
    end
  end

  describe "#drink" do


    it "should not allow drinking when empty" do
      expect{bottle.drink}.to raise_error(ArgumentError)
    end

    it "should return water" do
      bottle.fill
      expect(bottle.drink).to eq("water")
    end

    it "should empty the bottle by drinking after three sips" do
      bottle.fill
      bottle.drink
      expect(bottle.empty?).to be_false
      bottle.drink
      expect(bottle.empty?).to be_false
      bottle.drink
      expect(bottle.empty?).to be_true
    end
  end


  
end