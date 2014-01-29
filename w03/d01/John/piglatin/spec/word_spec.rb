require 'spec_helper'
require_relative '../lib/word'
require 'pry'

describe Word do

  describe "#original_word" do
    let(:word) { Word.new("bazinga") }

    it "has returns the original word" do
      expect( word.original_word ).to eq("bazinga")
    end
  end

  describe "#piglatinize" do
    let(:umbrella) { Word.new("umbrella") }
    let(:bat) { Word.new("bat") }
    let(:clock) { Word.new("clock") }


    describe "#letter_is_vowel?" do
      context "the word begins with a vowel" do

        it "should know the first letter is a vowel" do
          expect( umbrella.letter_is_vowel?('u') ).to be_true
        end
      end

      context "the word begins with a consonant" do
        it "should know the first letter is a consonant" do
          expect( bat.letter_is_vowel?('b') ).to be_false
        end
      end

    end

      it "should return the original with 'way' at the end" do
        expect( umbrella.piglatinize ).to eq('umbrellaway')
      end

    context "the word begins with a consonant" do

      it "should return the consonant" do
        expect( bat.piglatinize ).to eq('atbay')
      end
    end

    context "the word begins with two consonants" do

      it "should chop off both front consonants" do
        expect( clock.piglatinize ).to eq('ockclay')
      end
    end  
  end

end