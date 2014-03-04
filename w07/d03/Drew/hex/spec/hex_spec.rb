require 'spec_helper'
require_relative '../lib/hex'

describe Hexidecimal do
let(:hex) {Hexidecimal.new}
  
  describe "#to_decimal" do
    it "converts a Hexidecimal input into decimal" do
      expect(hex.to_decimal(00)).to eq(0)
      expect(hex.to_decimal(10)).to eq(16)
    end
  end

end