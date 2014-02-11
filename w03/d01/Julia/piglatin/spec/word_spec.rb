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
    subject(:word) {Word.new("word")}
    let(:kitty) {Word.new("kitty")}
    let(:fishy) {Word.new("fishy")}
    let(:opera) {Word.new("opera")}
    let(:quiet) {Word.new("quiet")}
    let(:glove) {Word.new("glove")}

    it "returns the piglatinized version of a consonant-beginning word" do
      expect(kitty.piglatinize).to eq("ittykay")
    end

    it "returns the piglatinized version of a vowel-beginning word" do
      expect(opera.piglatinize).to eq("operaway")
    end

    # it "return the piglatinized version of a word with multiple leading consonant sounds" do 
    #   expect(glove.piglatinized).to eq("oveglay")
    # end

    it "expects the piglatinized version of words beginning with qu- or squ-" do
      expect(quiet.piglatinize).to eq("ietquay")
    end
  end

end