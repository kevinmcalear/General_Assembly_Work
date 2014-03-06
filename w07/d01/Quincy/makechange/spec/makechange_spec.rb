require 'rspec'
require_relative '../lib/makechange.rb'

describe Change  do
  it "returns a whole number of change" do
    expect(Change.new.whole_num(5)).to be_a Integer
  end

  it "returns pennies if you need them" do
    expect(Change.new.pennies(26)).to be <= 4
    expect(Change.new.pennies(26)).to be >= 1
  end

  it "returns the change for you" do
    expect(Change.new.make_change).to eq()
  end

end
