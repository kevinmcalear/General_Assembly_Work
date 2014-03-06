require 'rspec'
require_relative '../lib/hex'

describe Hexidecimal do
  describe "conversion" do
    it "has 16 unique hexidecimal numbers" do
      expect(Hexidecimal.new.conversion).to have(16).things
    end

    it "returns a hexidecimal number" do
      expect(Hexidecimal.new.to_decimal("FFF")).to eq(4095)
    end



  end

end
