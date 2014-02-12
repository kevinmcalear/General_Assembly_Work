require 'anagram_spec'
require_relative "../anagram"

 

describe "same_letters" do
  it "checks to see if two words have the same letters" do
    expect(same_letters("inlets", "banana")).to be_false
  end
end

describe "equals_anagram" do
  it "checks to see if the words matches the anagram in the array" do
    expect(equals_anagram("tester", "kevin", "matt", "restet")).to eq(["restet"])
    expect(equals_anagram("test", "kevin", "matt")).to eq([])
    expect(equals_anagram("test", "test", "test", "test")).to eq(["test", "test", "test"])
  end
end
