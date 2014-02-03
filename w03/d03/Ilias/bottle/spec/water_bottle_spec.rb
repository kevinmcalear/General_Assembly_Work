require "spec_helper"
require_relative "../lib/water_bottle"

describe "WaterBottle" do
subject(:bottle){WaterBottle.new}

  describe "#empty?" do
    it "tells us if there's water in the bottle" do
      expect(bottle.empty?).to be_true
    end

  end

  context "we fill the bottle" do
    describe "#fill" do
      before { bottle.fill }
        it "it fills the bottle with water" do
          expect(bottle.empty?).to be_false
        end
    end
  end

  context "we drink the bottle, but cannot if empty" do
    describe "#drink" do
      before do
        bottle.fill
        bottle.drink
      end
        it "empty's the bottle of water" do
          expect(bottle.empty?).to be_true
        end
      before { bottle.drink }
        it "tells user to fill if bottle is already empty" do
          expect(bottle.drink).to eq("Please fill bottle")
        end 
    end


  end

end