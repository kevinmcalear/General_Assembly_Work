require 'spec_helper'
require_relative '../lib/hex'

describe Hex do
  describe "::to_decimal" do
    it "converts hex to decimal" do
      expect(Hex.to_decimal("0f")).to eq(15)
      expect(Hex.to_decimal("10")).to eq(16)
      expect(Hex.to_decimal("8a")).to eq(138)
      expect(Hex.to_decimal("ffffff")).to eq(16777215)
    end
  end
end