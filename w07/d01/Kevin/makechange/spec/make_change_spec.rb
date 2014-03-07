require 'spec_helper'
require_relative '../lib/make_change'

describe "#determine_coin" do
  it "returns the highest coin available from a number" do
    expect(determine_coin(25)[0]).to eq("1 quarter(s)")
    expect(determine_coin(30)[0]).to eq("1 quarter(s)")
    expect(determine_coin(5)[0]).to eq("1 nickel(s)")
    expect(determine_coin(4)[0]).to eq("4 pennies")
    expect(determine_coin(6)[0]).to eq("1 nickel(s)")
    expect(determine_coin(10)[0]).to eq("1 dime(s)")
    expect(determine_coin(11)[0]).to eq("1 dime(s)")
    expect(determine_coin(20)[0]).to eq("2 dime(s)") 
  end

  it "returns any leftover money." do
    expect(determine_coin(25)[1]).to eq(0)
    expect(determine_coin(30)[1]).to eq(5)
    expect(determine_coin(5)[1]).to eq(0)
    expect(determine_coin(4)[1]).to eq(0)
    expect(determine_coin(6)[1]).to eq(1)
    expect(determine_coin(10)[1]).to eq(0)
    expect(determine_coin(11)[1]).to eq(1)
    expect(determine_coin(20)[1]).to eq(0)
  end
end

describe "#make_change" do
  it "returns the least amount of coins needed to make change" do
    expect(make_change(100)).to eq(["4 quarter(s)"])
    expect(make_change(120)).to eq(["4 quarter(s)", "2 dime(s)"])
    expect(make_change(22)).to eq(["2 dime(s)", "2 pennies"])
    expect(make_change(45)).to eq(["1 quarter(s)", "2 dime(s)"])
    expect(make_change(17)).to eq(["1 dime(s)", "1 nickel(s)", "2 pennies"])
  end
end