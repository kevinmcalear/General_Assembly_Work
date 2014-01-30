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
    let(:wordvowel) {Word.new("apple")}
    let(:wordconsonant) {Word.new("piggy")}
    let(:g_word) {Word.new("glove")}

    it "makes any word that begins with a vowel into Pig Latin" do
      expect( wordvowel.piglatinize).to match("appleway")
    end

    it "makes any word that does not begin with a vowel into Pig Latin" do
      expect( wordconsonant.piglatinize).to match("iggypay")
    end

    it "makes a word w/ all leading consonants that does not begin with a vowel into Pig Latin" do
      expect( g_word.piglatinize).to match("oveglay")
    end

  end


end