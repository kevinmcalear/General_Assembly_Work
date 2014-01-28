require "spec_helper"
require_relative "../lib/play"

describe "#add" do 
  it "adds two positive numbers together" do
    expect(add(2, 3)).to eq(5)
  end

  it "adds two negative numbers together" do
    expect( add(-2, -4) ).to eq(-6)
  end
end

describe "#odds" do
  it "removes even integers from an array, only leaving odd integers" do
    expect( odd([1, 2, 3]) ). to eq([1, 3])
  end

  it "returns an empty array when all elements of the array are even integers" do 
    expect( odd([2, 4, 6]) ).to eq([])
  end

  it "returns an empty array when passed and empty array" do
    expect( odd([]) ).to eq([])
  end
end