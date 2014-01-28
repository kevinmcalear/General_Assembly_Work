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
    let(:word) { Word.new("egg") }
    let(:cow) { Word.new("cow") }
    let(:g_word) { Word.new("glove") }

   it "when word starts with a vowel or silent" do
      expect( word.piglatinize ).to eq("eggway")
    end

    it "when word starts with a consonant" do
      expect( cow.piglatinize ).to eq("owcay")
    end

    it "returns the word with all leading consonant letters at the end with ay" do
      expect( g_word.piglatinize).to eq("oveglay")
    end
end
end