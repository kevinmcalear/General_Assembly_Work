require_relative "../lib/anagram.rb"
require "spec_helper"

describe Anagram do
  subject(:anagram) {Anagram.new("listen")}

  describe "::new" do
    it "split a word into an array" do
      expect(anagram.word).to eq(["l", "i", "s", "t", "e", "n"])
    end
  end
  
  describe "#alpha" do
    it "orders array alphabetically" do
      expect(anagram.alpha).to eq(["e", "i", "l", "n", "s", "t"])
    end
  end
end