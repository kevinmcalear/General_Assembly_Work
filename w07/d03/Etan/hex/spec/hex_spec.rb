require 'rspec'
require_relative '../lib/hex.rb'

describe "converting hex to decimal and vice versa" do 

  let(:number) { Convert.new }

  it "should convert decimal to hex" do 
    expect(number.convert_decimal_to_hex(19)).to eq("13")
  end

  it "should convert hex to decimal" do
    expect(number.convert_hex_to_decimal("f")).to eq("15")
  end



end