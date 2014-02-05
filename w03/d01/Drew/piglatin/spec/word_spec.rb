require 'spec_helper'
require_relative '../lib/word'

describe Word do

  describe "#original_word" do
    let(:word) { Word.new("bazinga") }

    it "has returns the original word" do
      expect( word.original_word ).to eq("bazinga")
    end

    describe "#piglatinize" do
      
      let(:word) {Word.new("egg")}
      let(:new_word) {Word.new("cow")}
      let(:g_word) {Word.new("glove")}

      it "adds the suffix way to word that begins with a vowel" do
        expect( word.piglatinize).to eq("eggway")
      end

      it "returns the word with the consonant sound at the end with ay" do
        expect( new_word.piglatinize).to eq("owcay")
      end

      it "returns the word with multiple consonants at the begining" do
        expect( g_word.piglatinize).to eq("oveglay")
      end
    end
  end
end