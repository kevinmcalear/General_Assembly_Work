require 'spec_helper'
require_relative '../lib/hex'

# Write a Hexadecimal class that has a method `to_decimal`. It should convert the hexadecimal number to its decimal equivalent. Be sure to write tests!


describe Hexadecimal do 
  let(:hex) {Hexadecimal.new}

  it "to_decimal converts a single hex" do 
    expect(hex.to_decimal("f") ).to eq("15")
  end 

  it "to_decimal converts a two digit hex" do 
    expect(hex.to_decimal("c8") ).to eq("200")
  end

  it "to_decimal converts a five digit hex" do 
    expect(hex.to_decimal("7a5d5") ).to eq("501205")
  end

  it "to_hex converts a single decimal to hex"do 
    expect(hex.to_hex("100") ).to eq("64")
  end 


end 