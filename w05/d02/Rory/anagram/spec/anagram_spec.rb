require "spec_helper"
require_relative "../lib/anagram"

describe "#same_letters" do
  it "checks if all of the letters in two words are the same" do
    expect(same_letters("enlist", "listen")).to be_true
    expect(same_letters("sue", "jane")).to be_false
  end
end

describe "#is_anagram" do
  it "tells us if any words are anagrams of the first word" do
    expect(is_anagram("rory", ["bob", "jane", "yror"])).to eq(["stet"])
  end
end

#describe Anagram do
  #let(:example) {Anagram.new("listen", ["enlists", "google"])
    #describe "#find_letters"
#    
#end