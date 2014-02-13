require 'spec_helper'
require_relative '../lib/anagram_finder'

describe Anagram do
  subject(:words){["enlists", "google", "inlets", "banana"]}
  subject(:word){Anagram.new("listen")}
  
  describe "::new" do
    # it "method is passed a word to be analyzed" do
    #   expect(word).to be_present
    # end
  end

  it "splits word to be analyzed" do
    expect(word.analyze).to eq(["l", "i", "s", "t", "e", "n"])
  end

end