require 'spec_helper'
require_relative '../lib/anagram.rb'

describe "#anagram?" do
  it "can tell if a word is an anagram of another" do
    expect(anagram?("listen", "inlets")).to be_true
  end

  it "works with two words of the same length" do
    expect(anagram?("google","banana")).to be_false
  end

  it "works with a word that is capitalized" do
    expect(anagram?("Shoeboxes","shoe")).to be_false
  end
end

describe "#which_is_anagram" do
  it "can pick the anagram out of a list of words" do
    array_1 = ["enlists", "google", "inlets", "banana"]
  expect(which_is_anagram("listen",array_1)).to match("inlets")
  end

  it "can pick out the anagram out of a list of words" do
    array_1 = ["shoe", "pineapple", "marching", "swordfish"]
    expect(which_is_anagram("hoes", array_1)).to match("shoe")
  end

  it "works with different notation" do
    array_1 = %w(enlists google inlets banana)
  expect(which_is_anagram("listen",array_1)).to match("inlets")
  end
end