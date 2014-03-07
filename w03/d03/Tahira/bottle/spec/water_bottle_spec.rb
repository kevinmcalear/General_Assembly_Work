require 'spec_helper'
require_relative '../lib/water_bottle'

describe WaterBottle do 

  subject(:bottle) {WaterBottle.new()}

  describe "::new" do
    it "#empty? is empty" do
      expect(bottle.empty?).to be_true
    end
    it "has no sips to drink" do
      expect(bottle.sips).to eq(0)
    end
  end

  describe "#fill" do
    before do
      bottle.fill
    end

    it "can be filled" do
      expect(bottle.empty?).to be_false
    end

    it "has 3 sips to drink" do
      expect(bottle.sips).to eq(3)
    end
  end

  describe "#drink" do
    it "has one less sip after you drink" do
      bottle.fill
      bottle.drink
      expect(bottle.sips).to eq(2)
    end

    it "cannot be drank from if empty" do
      empty_bottle = WaterBottle.new()
      expect(empty_bottle.drink).to eq("Please fill me!")
    end

     it "is empty when no sips are left" do
      empty_bottle = WaterBottle.new()
      empty_bottle.fill
      empty_bottle.drink
      empty_bottle.drink
      empty_bottle.drink
      expect(empty_bottle.empty?).to be_true
    end
  end
  
end