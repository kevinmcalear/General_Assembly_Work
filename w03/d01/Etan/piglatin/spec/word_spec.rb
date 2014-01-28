require 'spec_helper'
require_relative '../lib/word'

describe Word do

  describe "#original_word" do
    let(:word) { Word.new("bazinga") }

    it "has returns the original word" do
      expect( word.original_word ).to eq("bazinga")
    end
  end

  describe "#pig_latin" do
    let(:word) { Word.new("apple") }
 

    it "will return words with first letter vowel uppcase" do
      expect( word.piglatin ).to eq("APPLE")
    end

    it "will return vowel words with +way at the end" do
      expect( word.latin_time_vowel ).to eq("APPLEWAY")
    end
   end

   describe "#pig_latin" do
    let(:word) { Word.new("pig") }

    it "will return words with first letter consonant downcase" do
      expect( word.piglatin ).to eq("pig")
    end

    it "will return consonant words with first letter to end, + ay" do
      expect( word.latin_time_vowel ).to eq("igpay")
    end
  end





end