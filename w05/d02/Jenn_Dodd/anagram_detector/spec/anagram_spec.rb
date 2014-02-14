require "spec_helper"
require_relative "../lib/anagram"

describe "#anagram_detector" do 
  it "checks letters to see if they match" do
    expect(anagram_detector("listen")).should include("inlets")
  end 
end

describe("#anagram") do
  it "makes a word an array" do
    expect(anagram("listen")).to be_kind_of(Array)
  end
end

describe("#anagram_bank") do 

end

describe "#anagram_detector" do 
  it "checks letters to see if they match" do
    expect(anagram_detector("listen")).should include("inlets")
  end 
end