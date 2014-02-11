require 'spec_helper'
require_relative "../lib/anagram"

describe "#anagram" do

  it "should take a word and a list of words" do
    expect{anagram("listen", ["enlists", "google", "inlets", "banana"])}.not_to raise_error
  end

  it "should find the correct anagram" do
    expect(anagram("listen", ["enlists", "google", "inlets", "banana"]).first).to eq("inlets")
  end

  it "should detect multiple matches" do
    expect(anagram("lost", ["lots", "slot"])).to include("lots", "slot")
  end

  it "should return empty array if there are no answers" do
    expect(anagram("xxxxxxx", ["enlists", "google", "inlets", "banana"])).to eq([])
  end

  it "should return empty array if there are no answers the right length" do
    expect(anagram("list", ["enlists", "google", "inlets", "banana"])).to eq([])
  end

  it "should handle double letters" do
    expect(anagram("abba", ["baab"])).to eq(["baab"])
  end


end