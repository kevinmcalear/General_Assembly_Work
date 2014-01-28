require 'spec_helper'
require_relative '../lib/word'

describe Word do

  describe "#original_word" do
    let(:word) { Word.new("bazinga") }
    let(:vowel_word) { Word.new("apple")}
    let(:new_word) { Word.new("quick")}
    let(:g_word) { Word.new("glove")}

    it "has returns the original word" do
      expect( word.original_word ).to eq("bazinga")
    end

    describe "#latinator" do 
      it "returns the word pig latinized" do
        expect( word.latinator(word.original_word) ).to eq("azingabay")
      end

      it "returns a latinized word beginning with a vowel" do
        expect( vowel_word.latinator(vowel_word.original_word) ).to eq("appleway")
      end

      it "returns a word with 2 consonants pig latinized" do
        expect( g_word.latinator(g_word.original_word) ).to eq("oveglay")
      end
    end
  end
end