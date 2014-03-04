require 'spec_helper'
require_relative '../lib/make_change'

describe "#make_change" do

  it "tells you how many pennies there are in a given amount of money" do
    money_to_my_name = make_change(0.04)
    expect( money_to_my_name ).to eq("4 pennies")
  end

  it "tells you how many nickels there are in a given amount of money" do
    money_to_my_name = make_change(0.05)
    expect( money_to_my_name ).to eq("1 nickel ")
  end

  it "can handle amounts of money that result in multiple types of coin" do
    money_to_my_name = make_change(0.06)
    expect( money_to_my_name ).to eq("1 nickel 1 penny")
  end
    
  it "can still handle amounts of money that result in multiple types of coin" do
    money_to_my_name = make_change(0.07)
    expect( money_to_my_name ).to eq("1 nickel 2 pennies")
  end

  it "can handle amounts of money that result in multiple types of coin, even when it's a lot of different denominations" do
    money_to_my_name = make_change(1.17)
    expect( money_to_my_name ).to eq("4 quarters 1 dime 1 nickel 2 pennies")
  end

    it "can handle amounts of money that result in multiple types of coin, even when it's a lot of different denominations" do
    money_to_my_name = make_change(0.30)
    expect( money_to_my_name ).to eq("1 quarter 1 nickel ")

  end

end