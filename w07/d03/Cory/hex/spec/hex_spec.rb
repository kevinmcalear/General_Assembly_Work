require 'spec_helper'
require_relative '../lib/hex'

describe Hexadecimal do

  describe "#to_decimal" do
    it "should convert decimal to hex" do
      expect(Hexadecimal.new.hex(123)).to eq(291)
    end
  end

end