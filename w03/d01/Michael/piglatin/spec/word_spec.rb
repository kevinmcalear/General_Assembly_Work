require 'spec_helper'
require_relative '../lib/word'

describe Word do

  describe "#original_word" do
    let(:word) { Word.new("baZiNga") }

    it "has returns the original word as a downcase" do
      expect( word.original_word ).to eq("bazinga")
    end
  
  end 

  describe "#pig_latin" do
    context "the original word begins with a vowel sound" do 
      
      before do 
        @egg = Word.new("egg")
      end 

      it "returns the string 'way' at the end of words beginning with vowels" do
        expect(@egg.pig_latin).to eq("eggway")
      end 

    end 

    context "the original word begins with a consonant sound" do 

      before do 
        @duck = Word.new("duck")
      end 

      it "returns the the first consonant followed by the string 'ay'" do 
        expect(@duck.pig_latin).to eq("uckday")
      end    
    
    end 

    context "the original word begins with a consonant cluster" do 

      before do 
        @rhythm = Word.new("rhythm")
      end 

      it "returns the first consonant cluster at the end of the string followed by 'ay'" do
        expect(@rhythm.pig_latin).to eq("ythmrhay")
      end 

    end 
    
  end 

end