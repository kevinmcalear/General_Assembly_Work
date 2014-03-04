require 'spec_helper'
require_relative '../lib/hex'

describe Hexadecimal do 
  describe "#to_decimal" do
    it "can convert a hexadecimal number below A to a digit" do
      two = Hexadecimal.new(2)
      expect( two.to_decimal ).to eq(2)
    end
      
    it "can convert a hexademical letter to decimal" do
      b = Hexadecimal.new("B")
      expect( b.to_decimal ).to eq(11)
    end 

    it "can convert any hexademical number to decimal" do
      aaa34f5 = Hexadecimal.new("aaa34f5") 
      expect( aaa34f5.to_decimal ).to eq(178926837)
    end

  end
end