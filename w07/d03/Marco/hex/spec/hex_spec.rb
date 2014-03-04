require 'spec_helper'
require_relative '../lib/hex'

describe Hexadecimal do
  let(:hex){Hexadecimal.new}

  describe "#to_decimal" do
    it "pulls out a pair for inspection" do
      expect(hex.to_decimal("#769D34")).to eq(["7", "6"])
    end
  end
  
end