require "spec_helper.rb"
require_relative "../lib/hex"

describe Hexidecimal do
  let(:onetwothree) { Hexidecimal.new(123)}

  it "takes a number and converts it to an array" do
    expect(onetwothree.number).to be_kind_of(Array)
  end
  
  describe "#to_decimal" do
    it "takes a number and converts it to decimal" do
      expect(onetwothree.to_decimal).to eq(291)
    end
  end

end