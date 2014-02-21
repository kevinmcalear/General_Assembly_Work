require 'rspec'
require_relative '../lib/anagram'

describe Anagram do
  subject(:anagram) {Anagram.new}

  describe "#puzzle" do
    it "returns a word" do
      expect(anagram.decode"Quincy").to eq("Quincy")
    end

    it "has the same letters" do
      word_1 = "listen"
      word_2 = "inlets"
      expect(anagram.decoder(word_1, word_2)).to be_true
    end

    # it "returns a word with the same letters" do
    #   word_1 = "listen"
    #   word_2 = "inlets"
    #   expect(anagram.decoder(word_1, word_2)).to be_true


  end
end
