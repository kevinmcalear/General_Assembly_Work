require 'rspec'
require_relative '../lib/water'

describe Water  do
  let(:water) {Water.new}
  describe "::new" do

    it "is either empty or full" do
      expect(water.full?).not_to raise_error
    end
  end

  describe "#fill" do

    it "fills the water bottle" do
      water.fill
      expect(water.full?).to be(3)
    end
  end

  describe "#drink" do
    it "empties the bottle if it is full" do
      water.fill
      water.drink
      expect(water.full?).to be(2)
    end
    it "tells you there isn't water if there is no water" do
      expect(water.drink).to match("there is no water! Fill your bottle.")
    end
  end

end