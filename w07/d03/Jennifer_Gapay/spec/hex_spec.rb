require "spec_helper"
require_relative "../lib/hex"

describe Hexadecimal do 
  let(:hex) { Hexadecimal.new }
  
  describe "#hex_base" do
    it "gives the numerical value of 16" do
      expect(hex.base).to be(16)
    end
  end

  describe "#hex_letters" do
    it "gives the numerical eq to letters" do
      expect(hex.letters).to be
    end
  end

end