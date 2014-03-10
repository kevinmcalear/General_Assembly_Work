require 'spec_helper'
require_relative '../lib/makechange'

describe "make_change" do 
it "returns 0 number of coins" do
expect(make_change(0)).to eq ({quarters: 0, dimes: 0, nickels: 0, pennies: 0})
end
it "returns 2 quarters for 50 cents" do
expect(make_change(50)).to eq ({quarters: 2, dimes: 0, nickels: 0, pennies: 0})
end
  it "returns 2 quarters and 1 dime for 60 cents" do
    expect(make_change(60)).to eq ({quarters: 2, dimes: 1, nickels: 0, pennies: 0})
  end
  it "returns 2 quarters,1 dime, 1 nickel for 65 cents" do
    expect(make_change(65)).to eq ({quarters: 2, dimes: 1, nickels: 1, pennies: 0})
  end
  it "returns 2 quarters,1 dime, 1 nickel, and 3 pennies for for 68 cents" do
    expect(make_change(68)).to eq ({quarters: 2, dimes: 1, nickels: 1, pennies: 3})
  end
end