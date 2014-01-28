require 'spec_helper'
require 'pry'
require_relative '../lib/word'

describe Word do

  describe "#original_word" do
    let(:word) { Word.new("bazinga") }

    it "has returns the original word" do
      expect( word.original_word ).to eq("bazinga")
    end
  end

  describe "#piglatinize" do
    let(:e_word) { Word.new("egg") } 
    let(:c_word) { Word.new("cow") } 
    let(:g_word) { Word.new("glove") } 
  
    it "adds the suffix 'way' to word that begin with a vowel" do
      expect( e_word.piglatinize ).to eq("eggway")
    end

    it "returns the word with the consonant sound at the end with 'ay'" do
      expect( c_word.piglatinize ).to eq("owcay")
    end

    it "returns the word with all leading consonant letters at the end with 'ay'" do
      expect( g_word.piglatinize ).to eq("oveglay")
    end

  end
end

  
#     let(:less_simple_word) { Word.new("throughout") }
#      let(:just_another_string) { Word.new("Helvetica") }
#     it "appends the first letter of the word to the words end" do
#       expect( word.reappend_the_end ).to eq("azingab")
#     end
#     it "makes the end of a word basically piglatin" do
#       expect( word.piglatin_end ).to eq("azingabay")
#     end
#     it "returns the position of the first vowel in a string" do
#       expect( less_simple_word.first_vowel_position ).to eq(3)
#       expect( just_another_string.first_vowel_position ).to eq(1)
#     end
#     it "works for most words that have two or more consecutive consonants are the beginning" do
#       binding.pry
#       expect( less_simple_word.less_simple_piglatin ).to eq("oughoutthray")
#       #expect( just_another_string.less_simple_piglatin ).to eq("elveticahay")
#     end
#   end
# end