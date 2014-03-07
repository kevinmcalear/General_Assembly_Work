require_relative "../lib/change.rb"
require "spec_helper.rb"

describe "#make_change" do 
  it "takes a cent amount and returns it in change" do
    expect(make_change(25)).to eq("1 quarters, 0 dimes, 0 nickels, 0 pennies")
  end
  it "takes a cent amount and returns it in change" do
    expect(make_change(50)).to eq("2 quarters, 0 dimes, 0 nickels, 0 pennies")
  end
  it "takes a cent amount and returns it in change" do
    expect(make_change(7)).to eq("0 quarters, 0 dimes, 1 nickels, 2 pennies")
  end
end