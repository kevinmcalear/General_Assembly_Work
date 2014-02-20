require 'spec_helper'
require_relative '../lib/anagram'

describe Anagram do
  subject (:anagram) {Anagram.new("listen", "inlets")}

  
describe "#word1" do
  it "is the first word" do
    expect(anagram.word1).to eq("listen")
  end
end

describe "#word2" do
  it "is the second word" do
    expect(anagram.word2).to eq("inlets")
  end
end

describe "count" do
  it "has the same amount of letters" do
    expect(anagram.count).to be_true
  end
end

end