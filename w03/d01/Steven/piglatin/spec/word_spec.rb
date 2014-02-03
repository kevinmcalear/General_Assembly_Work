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
    let(:word2) { Word.new("bazinga") }

    it "adds the suffix way to words that begin with a vowell" do
      expect(word.piglatinize).to eq("eggway")
    end

    it "returns a word with the consanant at the end plus ay" do
      expect(c_word.piglatinize).to eq("owcay")

    it "splits a word at a vowell and adds ay" do
    expect( word2.piglatinize ).to eq("azingabay")
  end
end

end