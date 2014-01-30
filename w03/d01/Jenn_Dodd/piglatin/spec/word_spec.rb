require 'spec_helper'
require_relative '../lib/word'

describe Word do
  let(:word) { Word.new("bazinga") }
  let(:vowel_word) { Word.new("otter") }
  let(:g_word) { Word.new("glove")}
  
  describe "#original_word" do
    it "has returns the original word" do
      expect( word.original_word ).to eq("bazinga")
    end
  end

  describe "#piglatinize" do 
    it "returns the pig latin word for a vowel word" do
      expect( vowel_word.piglatinize).to eq("otterway")
    end
    it "returns the pig latin word for a consonant" do
      expect( word.piglatinize ).to eq("azingabay")
    end
    it "returns with all leading consonants at the end" do
      expect( g_word.piglatinize ).to eq("oveglay")
    end
  end
end