require 'spec_helper'
require_relative '../hex'

describe Hexadecimal do 
  describe "#to_decimal" do 
    it "handles a number between 1 and 10" do 
      expect(Hexadecimal.new.to_decimal("2")).to eq(2)
    end
    it "handles a case between 10 and 16" do 
      expect(Hexadecimal.new.to_decimal("d")).to eq(13)
    end
    it "handles a higher number" do 
      expect(Hexadecimal.new.to_decimal("1c")).to eq(28)
    end
  end

end