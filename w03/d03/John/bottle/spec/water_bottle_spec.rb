require "spec_helper"
require_relative "../lib/water_bottle"

describe WaterBottle do
  subject(:bottle) {WaterBottle.new}

  describe "::new" do
    it "starts empty" do
      expect(bottle.state).to eq("empty")
    end
  end

  describe "#full?" do
    it "knows if it's empty or full" do
      expect(bottle.full?).to be_false
    end
  end

  describe "#fill" do
    context "the bottle is empty" do
      it "gets filled" do
        bottle.fill
        expect(bottle.full?).to be_true
      end
    end
  end

  describe "#drink" do
    context "the bottle is empty" do
      it "should not let you drink" do
        expect(bottle.drink).to include("can't")
      end
    end

    context "the bottle is full" do
      before do
        bottle.fill
        bottle.drink
      end

      it "empties the bottle" do
        expect(bottle.full?).to be_false
      end

      it "returns water" do
        expect(bottle.water).to include("water")
        expect(bottle.water.count).to eq(1)
      end
    end
  end
end