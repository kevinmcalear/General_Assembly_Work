require 'spec_helper'
require_relative "../lib/bottle"


describe WaterBottle do
  subject(:bottle){WaterBottle.new}

  describe '::new' do

    it "starts empty" do
      expect(bottle.empty?).to be_true
    end
  end


  describe "#fill" do
    it "fills up the water bottle" do
      bottle.fill
      expect(bottle.fill).to be_true
      expect(bottle.empty?).to be_false
    end
  end

  describe "#drink" do
    it "becomes empty after you drink" do
      bottle.fill
      bottle.drink
      expect(bottle.empty?).to be_true
    end
    it "can only drink if bottle is full" do
      bottle.drink
      expect(bottle.drink).to eq "The bottle is empty"
    end
    it "should return water when full and we drink" do
      bottle.fill
      expect(bottle.drink).to eq "Water"
    end
  end

end