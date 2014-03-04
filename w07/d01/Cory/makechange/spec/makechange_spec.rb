require 'spec_helper'
require_relative '../lib/makechange'

describe "#make_change" do
  it "returns 1 nickel when 5 cents are passed" do
    expect(make_change(5)).to eq("0 quarters, 0 dimes, 1 nickles, and 0 pennies.")
  end
  it "returns 2 quarters and 1 penny when 51 cents are passed" do
    expect(make_change(51)).to eq("2 quarters, 0 dimes, 0 nickles, and 1 pennies.")
  end
end