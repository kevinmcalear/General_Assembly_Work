require "spec_helper"
require_relative "../lib/hex"

describe Hex do
  describe "#to_decimal" do
    it "converts numbers from hex to decimal" do
      expect(Hex.to_decimal("1c")).to eq(28)
      expect(Hex.to_decimal("f")).to eq(15)
    end
  end

  describe "#to_hex" do
    it "converts numbers from decimal to hex" do
      expect(Hex.to_hex(15)).to eq("f")
      expect(Hex.to_hex(28)).to eq("1c")
    end
  end
end
