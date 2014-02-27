require 'spec_helper.rb'
require_relative '../lib/change.rb'
require 'pry'

describe "making_change" do

  it "turns 100 cents into 4 quarters" do
    expect(make_change(100)).to eq("Your change would be [4] quarters, [0] dimes, [0] nickels and [0] pennies! Have a good day.")
  end

  it "turns 20 cents into 2 dimes" do
    expect(make_change(20)).to eq("Your change would be [0] quarters, [2] dimes, [0] nickels and [0] pennies! Have a good day.")
  end

  it "turns 5 cents into 1 nickel" do
    expect(make_change(5)).to eq("Your change would be [0] quarters, [0] dimes, [1] nickels and [0] pennies! Have a good day.")
  end

  it "turns 4 cents into 4 pennies" do
    expect(make_change(4)).to eq("Your change would be [0] quarters, [0] dimes, [0] nickels and [4] pennies! Have a good day.")
  end

end