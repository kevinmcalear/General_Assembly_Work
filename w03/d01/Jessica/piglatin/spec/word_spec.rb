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
    let(:p_word) {Word.new("pig") }
    let(:a_word) {Word.new("apple") }
    let(:g_word) {Word.new("glove") }
    
    it "returns the piglatin word" do
      expect(p_word.piglatinize).to eq("igpay")
   end
     it "returns the piglatin word if it starts with a vowel" do
      expect(a_word.piglatinize).to eq("appleway")
    end
     it "returns the piglatin word if more than just the first letter is a consonant" do
      expect(g_word.piglatinize)
    end
  end
end