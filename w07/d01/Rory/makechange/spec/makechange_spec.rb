require "spec_helper.rb"
require "makechange.rb"
require 'pry'

describe "#make_change" do
  describe "uses the largest coins first" do
    it "change for $1 should be 4 quarters" do
      expect(make_change(100)).to eq("Change is 4 quarter(s), 0 dime(s), 0 nickel(s) and 0 penn(y/ies)")
    end
    it "change for 30 cents should be 1 quarter and 1 nickel" do
      expect(make_change(30)).to eq("Change is 1 quarter(s), 0 dime(s), 1 nickel(s) and 0 penn(y/ies)")
    end
    it "change for 25 cents should be 1 quarter" do
      expect(make_change(25)).to eq("Change is 1 quarter(s), 0 dime(s), 0 nickel(s) and 0 penn(y/ies)")
    end
  end
end