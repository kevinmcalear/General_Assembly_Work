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
    let(:pig){Word.new("pig")}
    let(:apple){Word.new("apple")}
    let(:big_apple){Word.new("Apple")}
    let(:glove){Word.new("glove")}
    let(:latin){Word.new("latin")}
    let(:yellow){Word.new("yellow")}
    let(:queen){Word.new("queen")}
    let(:squeal){Word.new("squeal")}

    it "works on more words" do
      expect( latin.piglatinize).to eq("atinlay")
    end

    it "changes the word to pig latin" do
      expect( pig.piglatinize ).to eq("igpay")
      expect( apple.piglatinize ).to eq("appleway")
    end

    it "works on capitalized words" do
      expect(big_apple.piglatinize ).to eq("appleway")
    end

    it "works with glove" do
      expect(glove.piglatinize).to eq("oveglay")
    end

    it "works with y" do
      expect(yellow.piglatinize).to eq("ellowyay")
    end

    it "works with q" do
      expect(queen.piglatinize).to eq("eenquay")
      expect(squeal.piglatinize).to eq("ealsquay")
    end

  end


end