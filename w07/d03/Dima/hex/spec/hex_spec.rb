require 'spec_helper'
require_relative '../lib/hex.rb'
# require 'pry'

describe Converter do
 let(:converter) { Converter.new}

 describe "#convert" do
  it "converts given hexadecimal number into decimal" do
    expect(converter.convert("AF67BF")).to eq(11495359)
  end
 end 
end