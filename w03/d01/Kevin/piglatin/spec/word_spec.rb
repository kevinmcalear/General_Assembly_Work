require 'spec_helper'
require_relative '../lib/word'

describe Word do

  describe "#original_word" do
    let(:word) { Word.new("bazinga") }

    it "has returns the original word" do
      expect( word.original_word ).to eq("bazinga")
    end
  end

  describe "#piglatinize" do
    let(:word) { Word.new("bazinga") }
    let(:ear) { Word.new("ear") }
    let(:house) { Word.new("house") }
    let(:squid) {Word.new("squidward")}
    let(:queen) {Word.new("queen")}

    it "finds the first letter of the word, removes it, and puts it on the end" do
      expect(word.piglatinize).to eq("azingabay")
    end

    it "adds 'ay' or 'way' to the end of the word" do
      expect(ear.piglatinize).to eq("earway")
      expect(house.piglatinize).to eq("ousehay")
    end

    it "makes sure words that start in qu or squ work properly" do
      expect(squid.piglatinize).to eq("idwardsquay")
      expect(queen.piglatinize).to eq("eenquay")
    end

  end

end