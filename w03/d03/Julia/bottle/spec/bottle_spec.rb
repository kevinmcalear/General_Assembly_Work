require "spec_helper"
require_relative "../lib/bottle.rb"

describe Bottle do
  subject(:bottle){Bottle.new(false)}

  describe "::new" do
    it "is an empty bottle" do
      expect(bottle.filled).to be_false
    end
  end

  describe "#fill_it_up" do
    it "can be filled" do
      bottle.fill_it_up
      expect(bottle.filled).to be_true
    end
  end

  describe "#drink_water" do
    it "will be empty if someone takes a drink" do
      bottle.fill_it_up
      bottle.drink_water
      expect(bottle.filled).to be_false
    end

    it "won't let you drink if the bottle is empty" do
      bottle.drink_water
      expect(bottle.drink_water).to eq "The bottle is empty."
    end

    it "should return water when we drink from it and it is also full" do
      bottle.fill_it_up
      expect(bottle.drink_water).to eq("Water")
    end
  end
  
end