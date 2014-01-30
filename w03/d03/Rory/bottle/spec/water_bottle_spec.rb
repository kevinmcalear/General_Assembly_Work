require_relative "../lib/water_bottle.rb"
require "spec_helper"

describe WaterBottle do
  subject(:bottle){ WaterBottle.new }

  describe "::new" do
    it "starts empty" do
      expect(bottle.empty?).to be_true
    end
  end

  describe "#fill" do
    it "can be filled" do
      bottle.fill
      expect( bottle.empty? ).to be_false
    end
    #it "adds water to the water amount" do
      #expect(waterbottle.fill(10)).to eq(10)
    #end
  end

  describe "#drink" do
    #before do
      #@full_bottle = waterbottle.fill(10)
    #end
    #it "takes water out of the water amount" do
      #expect(@full_bottle.drink(5)).to eq(5)
    #end
    context "when full" do
      before do
        bottle.fill
      end

      it "empties the bottle" do
        bottle.drink
        expect( bottle.empty? ).to be_true
      end



      it "give us water back" do
        expect( bottle.drink ).to eq("Water")
      end
    end

    context "when empty" do

     it "won't let us drink" do
      expect( bottle.drink ).to eq "The bottle is empty"
    end

  end
end
end