require 'spec_helper'
require_relative '../lib/word'

describe Word do

  describe "#original_word" do
    let(:word) { Word.new("bazinga") }

    it "has returns the original word" do
      expect( word.original_word ).to eq("bazinga")
    end
  end

  describe "#vowel?" do 
    let(:word) { Word.new("bazinga") }
    let(:word2) { Word.new("Apple") }

    it "returns false if word does not start with a vowel" do 
      expect( word.vowel?).to eq(false)
    end

    it "returns true if word starts with a vowel" do
      expect( word2.vowel? ).to eq(true)
    end

  end

  describe "#consonant" do 
    let(:word3) { Word.new("banana") }

    it "takes a simple word starting with a consonant and moves the consonant to the end" do 
      expect( word3.consonant).to eq("ananab")
    end
  end


  describe "#piglatinize" do 
    let(:word) { Word.new("bazinga") }
    let(:word2) { Word.new("Apple") }
    let(:banana) { Word.new("Banana") }
    let(:yellow) { Word.new("yellow") }
    let(:rhythm) { Word.new("rhythm") }
    let(:queen) { Word.new("queen") }

    it "translates a word beginning with a vowel" do 
      expect( word2.piglatinize ).to eq("appleway")
    end
    it "translates a simple word beginning with a consonant" do 
      expect(banana.piglatinize).to eq("ananabay")
    end
    it "translates a word starting with y" do 
      expect(yellow.piglatinize).to eq("ellowyay")
    end
    it "translates a word starting with rh" do 
      expect(rhythm.piglatinize).to eq("ythmrhay")
    end
    it "translates a word starting with qu" do
      expect(queen.piglatinize).to eq("eenquay")
    end
  end

end














