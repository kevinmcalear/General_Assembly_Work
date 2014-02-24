require "spec_helper"
require_relative "../lib/anagram"

describe Anagram do
subject (:anagram) {Anagram.new}

  describe "#word_sort" do
    it "takes a word a sorts the letters alphabetically" do
      expect(anagram.word_sort("cdba")).to eq("abcd")
    end
  end

  describe "#splitter_sorter" do
    it "it takes an array and splits and sorts each item" do
      expect(anagram.splitter_sorter(%w(dcba cbad dcab abcd))). to eq(%w(abcd abcd abcd abcd))
    end
  end

  describe "#solution" do
    it "returns the anagram" do
      expect(anagram.solution("listen", %w(enlists google inlets banana))).to eq("inlets")
    end
  end

end
