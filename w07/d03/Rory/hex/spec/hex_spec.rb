require 'spec_helper'
require_relative '../lib/hex.rb'

describe Hexadecimal do

  describe "::to_decimal" do
    it "makes hexadecimal decimal" do
      expect(Hexadecimal.to_decimal("1")).to eq(1)
    end
  end
#describe "#to_decimal(hex_num)" do
  #it "converts a 2 digit hexadecimal to decimal" do
    #expect(to_decimal(00)).to_eq(0)
  #end
#end
end

