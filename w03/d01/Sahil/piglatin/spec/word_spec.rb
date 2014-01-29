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
    it "returns true if its a vowel" do
      expect(Word.new("asdasda").vowel?("e")).to be_true
    end
  end

  describe "#convert" do

    it "returns piglatin for words beginning with vowels" do
    expect(Word.new("egg").convert).to eq "eggway"
    end

    it "returns piglatin for words beginning with consonents" do
    expect(Word.new("happy").convert).to eq "appyhay"
    end

    it "returns piglatin even when letters are capitalized" do
    expect(Word.new("AgG").convert).to eq "aggway"
    end

    it "pushes a 2-char consonent clusters to the end" do
    expect(Word.new("plumber").convert).to eq "umberplay"
    end

    it "pushes a 3-char consonent clusters to the end" do
      expect(Word.new("chrome").convert).to eq "omechray"
    end

    it "works with single letter words" do
    expect(Word.new("a").convert).to eq "away"
    end
  end
end