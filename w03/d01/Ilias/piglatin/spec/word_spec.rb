require 'spec_helper'
require_relative '../lib/word'

describe Word do
subject (:word) { Word.new("bazinga") }
subject (:word1) { Word.new("apples") }
subject (:word2) { Word.new("glove") }
  describe "#original_word" do

    it "has returns the original word" do
      expect( word.original_word ).to eq("bazinga")
    end
  end

  describe "#piggy" do
    it "puts the first constinants in the last position and always adds 'ay' || if vowel, adds 'way' " do
      expect( word.piggy).to eq("azingabay")
      expect( word1.piggy ).to eq("applesway")
      expect( world2.piggy ).to eq("oveglay")
    end
  end



end

