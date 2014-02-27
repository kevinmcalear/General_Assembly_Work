require 'spec_helper'
require_relative "../lib/hex"

describe Hexadecimal do
  let(:hex) { Hexadecimal.new }

  describe "#to_decimal" do
    it "converts hex to decimal" do
      expect(hex.to_decimal('0f')).to eq(15)
    end

    it "converts hex to decimal" do
      expect(hex.to_decimal('2f')).to eq(47)
    end

    it "converts hex to decimal" do
      expect(hex.to_decimal('aa')).to eq(165)
    end

    it "converts hex to decimal" do
      expect(hex.to_decimal('09')).to eq(9)
    end

    it "converts hex to decimal" do
      expect(hex.to_decimal('25')).to eq(37)
    end

    it "converts hex to decimal" do
      expect(hex.to_decimal('ff')).to eq(255)
    end    
  end
end