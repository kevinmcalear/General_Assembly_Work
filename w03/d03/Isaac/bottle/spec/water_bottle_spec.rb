require 'spec_helper'
require_relative '../lib/water_bottle'

describe WaterBottle do 
  let(:water1) {WaterBottle.new}

  describe "#empty? method" do 
    it "returns false for a newly bought water bottle " do 
      expect(WaterBottle.new.empty?).to eq(false)
    end
  end

  describe "#drink method" do 
    before do 
      water1.drink
    end
    it "empties the water bottle" do 
      expect(water1.empty?).to eq(true)
    end
  end

  describe "#fill method" do
    before do 
      water1.fill
    end
    it "fills up the water bottle" do 
      expect(water1.empty?).to eq(false)
    end
  end


end

