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
    let(:e_word) {Word.new("egg")}
    let(:c_word) {Word.new("cow")}
    let(:g_word) {Word.new("glove")}

    it "returns way at end it starts with vowel" do
      expect(e_word.piglatinize).to eq("eggway")
    end
    it "return consonant sounds, the initial consonant or consonant cluster is moved to the end of the word, and ay is added" do
      expect(c_word.piglatinize).to eq("owcay")
    end
    it "returns the word will all leading consonant letters at the end with ay" do
      expect(g_word.piglatinize).to eq("oveglay")
    end
  end
end