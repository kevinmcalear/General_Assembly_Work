require 'spec_helper'
require_relative '../lib/hex.rb'


describe Hexadecimal do

  describe "::to_decimal" do
    it "should handle a small integer" do
      expect(Hexadecimal.to_decimal("4")).to eq(4)
    end

    it "should handle hex numbers above 9" do
      expect(Hexadecimal.to_decimal("a")).to eq(10)
    end

    it "should handle multiple place hex nums" do
      expect(Hexadecimal.to_decimal("ea")).to eq(234)
    end

  end

  describe "::to_hex" do
    it "should handle a small integer" do
      expect(Hexadecimal.to_hex(4)).to eq("4")
    end

    it "should handle a double digit int" do
      expect(Hexadecimal.to_hex(17)).to eq("11")
    end

    it "should handle a number than converts to hex char" do
      expect(Hexadecimal.to_hex(10)).to eq("a")
    end
  end
  
end