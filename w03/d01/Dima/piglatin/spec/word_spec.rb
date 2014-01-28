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
    let(:word) {Word.new("egg")}
    let(:c_word) {Word.new("cow")}
    let(:g_word) {Word.new("glove")}

    it "translates word if first letter is vowel" do
      expect(word.piglatinize).to eq("eggway")
    end

    it "returns the word with the consonant sound at the end with ay" do
      expect(c_word.piglatinize).to eq("owcay")
    end

    it "returns the word with all leading consonant letters at the end with ay" do
      expect(g_word.piglatinize).to eq("oveglay")
    end
  end
end