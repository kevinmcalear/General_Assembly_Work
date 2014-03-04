require 'spec_helper'
require_relative '../lib/word'

describe Word do

  describe "#original_word" do
    let(:word) { Word.new("bazinga") }

    it "has returns the original word" do
      expect( word.original_word ).to eq("bazinga")
    end
  end

  describe "#vowel_sounds" do 
    let(:word) {Word.new("eight") }

    it "returns the original word plus way" do
      expect( word.vowel_sounds ).to eq("eightway")
    end
  end

  describe "::vowel?" do

    it "returns if a letter is a vowel, excluding y" do
      expect(Word.vowel?("o")).to be_true
    end

    it "returns if a letter is a vowel, including y" do
      expect(Word.vowel?("y", true)).to be_true
    end


  end

  describe "#consonant_sounds" do
    let(:word) {Word.new("hate") }

    it "returns the original word with the sound at the end plus ay" do
      expect( word.consonant_sounds).to eq("atehay")
    end

    it "understands two letter consonant sounds" do
      expect( Word.new("crow").consonant_sounds).to eq("owcray")
    end

    context "y" do
      let(:word) {Word.new("rhythm") }
      it "recognizes y as a vowel sound in the middle of the word" do
        expect( word.consonant_sounds).to eq ("ythmrhay")
      end
    end
  end

  describe "#exception" do
    let(:word) {Word.new("hours") }

    it "recognizes an exception an return true" do
      expect(word.exception?).to be_true
    end
  end

  describe "#piglatinize" do
    let(:word) {Word.new("bazinga") }
    let(:word2) {Word.new("apple") }
    let(:yellow) {Word.new("yellow")}
    let(:queen) {Word.new("Queen")}
    let(:squeal) {Word.new("squeal")}


    it "returns the piglatinized version of either type" do
      expect( word.piglatinize).to eq("azingabay")
      expect( word2.piglatinize).to eq("appleway")
      expect( yellow.piglatinize).to eq("ellowyay")
      expect( queen.piglatinize).to eq("eenquay")
      expect( squeal.piglatinize).to eq("ealsquay")
      expect( Word.new("hours").piglatinize).to eq("hoursway")
    end
  end

end