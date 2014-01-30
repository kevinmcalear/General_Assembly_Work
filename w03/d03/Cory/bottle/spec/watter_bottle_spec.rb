require_relative "../lib/water_bottle.rb"
require "spec_helper"

describe Water_Bottle do
  subject(:bottle) {Water_Bottle.new}

  describe "::new" do #descirbes a new instance
    it "starts empty" do
      expect(bottle.empty?).to be_true
    end
  end
  
  describe "#fill" do #describes a method
    it "can be filled" do
      bottle.fill
      expect(bottle.empty?).to be_false
    end
  end

  describe "#drink" do #describes a method
    it "becomes empty after you drink" do
      bottle.fill 
      bottle.drink
      expect(bottle.empty?).to be_true
    end
    it "can only be drunk if the bottle is full" do
      bottle.drink
      expect(bottle.drink).to eq "The bottle is empty"
    end
    it "should return water when we drink from it and it is also full" do
      bottle.fill
      expect(bottle.drink).to eq("Water")      
    end
  end
end