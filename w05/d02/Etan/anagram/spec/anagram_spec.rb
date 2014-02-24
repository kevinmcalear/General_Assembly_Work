require "spec_helper"
require_relative "../lib/anagram"

describe Anagram do 
    subject (:word_gen){ Anagram.new("listen", %w(enlists google inlets banana)) }

    describe "#word" do
      it "should have a word" do
        expect(word_gen.word).to eq("listen")
      end 
    end

    describe "#array" do
      it "should have an array of words" do 
        expect(word_gen.array).to eq(["enlists", "google", 
          "inlets", "banana"])
      end
    end
end