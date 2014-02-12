require 'spec_helper'
require_relative '../lib/anagram.rb'

describe Anagram do
  let(:example) {Anagram.new("listen", ["enlists", "google", "inlets", "banana"])}
  describe "#find_letters" do

    it "turns a word into an array" do
      expect(example.find_letters).to be_kind_of(Array)
    end

    it "makes that array alphabetical" do
      expect(example.find_letters).to eq(["e","i","l","n","s","t"])
    end

  end

  describe "#possibilites_letters" do

    it "turns all of the possibilities into arrays" do

      expect(example.possibilities_letters).to be_kind_of(Array)

    end

    it "sorts those arrays into alphabetical order" do
      expect(example.possibilities_letters[1]).to eq(["e", "g", "g", "l", "o", "o"])
    end
  end

  describe "#find anagrams" do

    it "returns the anagrams" do
      example.possibilities_letters
      example.find_letters
      expect(example.find_anagrams).to eq(["inlets"])

    end

  end
  
end