require 'spec_helper'
require_relative '../lib/makechange'

describe "#make_change" do
  
  context "the value can be expressed with one coin" do
    it "returns a number of quarters" do
      expect(make_change(25)).to include("Quarters: 1")
    end

    it "returns a number of dimes" do
      expect(make_change(20)).to include("Dimes: 2")
    end

    it "returns a number of nickels" do
      expect(make_change(10)).to include("Nickels: 0")
    end

    it "returns a number of pennies" do
      expect(make_change(4)).to include("Pennies: 4")
    end
  end

  context "the value returns multiple coins" do
    it "subtracts larger coins first" do
      expect(make_change(15)).to include("Nickels: 1")
    end

    it "subtracts larger coins first" do
      expect(make_change(25)).to include("Nickels: 0, Pennies: 0")
    end

    it "subtracts larger coins first" do
      expect(make_change(51)).to include("Quarters: 2")
      expect(make_change(26)).to include("Pennies: 1")
    end

    it "subtracts larger coins first" do
      expect(make_change(93)).to eq("Quarters: 3, Dimes: 1, Nickels: 1, Pennies: 3")
    end

    it "subtracts larger coins first" do
      expect(make_change(102)).to eq("Quarters: 4, Dimes: 0, Nickels: 0, Pennies: 2")
    end 
  end
end

describe "#make_cents" do
  context "total value is less than $1" do
    it "returns the number of cents" do
      expect(make_cents(2,3,3,1)).to eq("$0.96")
    end
  end

  context "total value is between $1 and $2" do
    it "returns the number of dollars" do
      expect(make_cents(2,3,4,2)).to include("$1")
    end

    it "returns the number of cents" do
      expect(make_cents(2,3,4,2)).to include(".02")
    end

    it "returns the dollars and cents" do
      expect(make_cents(2,3,4,2)).to eq("$1.02")
    end
  end

  context "total value is over $2" do
    it "returns the number of dollars" do
      expect(make_cents(6,4,4,2)).to include("$2")
    end    

    it "returns the number of cents" do
      expect(make_cents(6,4,4,2)).to include(".12")
    end

    it "returns the dollars and cents" do
      expect(make_cents(6,4,4,2)).to eq("$2.12")
    end
  end
end












