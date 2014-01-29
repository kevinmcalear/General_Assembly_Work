require 'spec_helper'
require_relative '../lib/word'

describe Word do

  describe "#original_word" do
    let(:word) { Word.new("bazinga") }

    it "has returns the original word" do
      expect( word.original_word ).to eq("bazinga")
    end
  end

  describe "#latinize" do
    let(:word) {Word.new("bazinga")}
    let(:vowelword) {Word.new("escape")}
    let(:complexword) {Word.new("glove")}

    it "adds way to the end of a word starting with a vowel" do
      expect(vowelword.latinize).to eq("escapeway")
    end
    it "moves the first letter to the end and adds ay to it" do
      expect(word.latinize).to eq("azingabay")
    end
    it "moves the first consonant cluster to the end and adds ay to it" do
      expect(complexword.latinize).to eq("oveglay")
    end
  end
end