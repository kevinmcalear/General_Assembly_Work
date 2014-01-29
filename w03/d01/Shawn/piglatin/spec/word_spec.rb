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
    let(:word) { Word.new("exit") } 
    let(:g_word) { Word.new("glove")}

    it "adds the suffix 'way' to words that begin with a vowel" do 
      expect( word.piglatinize ).to eq("exitway")
    end
    
    let(:new_word) { Word.new("happy") } 
      it "moves the initial consonance to the end, and adds 'ay' " do 
        expect( new_word.piglatinize ).to eq("appyhay")
      end

      it "returns the word with all leading consonance at the end with ay" do
        expect( g_word.piglatinize).to eq("oveglay")
      end
  end
end