require "spec_helper"
require_relative "../lib/play"

describe "#add" do
  it "adds two numbers together" do
    expect(add(2,3)).to eq(5)
  end

  it "adds two negative numbers together" do
    expect(add(-2,-4)).to eq(-6)
  end  
end

# describe "#odds" do
#   it "returns all of the odd numbers in an array" do
#     expect(odds([1,2,3])).to eq([1,3])
#   end

#   it "returns all of the odd numbers in an array" do
#     expect(odds([2,4,6])).to eq([])
#   end

#   it "returns all of the odd numbers in an array" do
#     expect(odds([])).to eq([])
#   end

# end
