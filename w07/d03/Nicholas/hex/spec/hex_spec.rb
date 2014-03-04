require 'rspec'
require_relative '../lib/hex.rb'

describe Hexidecimal do 
  let(:hex_one) { Hexidecimal.new(123) }

  describe "#to_decimal" do 
    it "should convert a number to hexidecimal" do 
      expect( hex_one.to_decimal ).to eq(291)
    end
  end

end
