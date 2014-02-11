# Write a program that, given a word and a list of possible anagrams, selects the correct one(s).

# In other words, given: "listen" and %w(enlists google inlets banana) the program should return "inlets".

# Think about: What are some scenarios we should test for?

# What makes something an anagram? The two words have the same letters... How can we check to see if they have exactly the same letters?

require 'spec_helper'
require_relative '../lib/anagram'

# describe "#word_value" do
#   it "returns all of the letters values in a word" do
#     expect(word_value("boob")).to eq([2, 15, 15, 2])
#     expect(word_value("abc")).to eq([1, 2, 3])
#   end
# end

describe "#same_length" do
  it "checks if two words are the same length" do
    expect(same_length("boob", "bart")).to be_true
    expect(same_length("testing", "test")).to be_false
  end
end

describe "#same_letters" do
  it "checks if all of the letters in two words are the same" do
    expect(same_letters("boob", "obob")).to be_true
    expect(same_letters("testing", "yes")).to be_false
  end
end

describe "#is_anagram" do
  it "tells us, given multiple words, if any are anograms of the first word" do
    expect(is_anagram("tester", "kevin", "matt", "restet")).to eq(["restet"])
    expect(is_anagram("test", "kevin", "matt")).to eq([])
    expect(is_anagram("test", "test", "test", "test")).to eq(["test", "test", "test"])
  end
end