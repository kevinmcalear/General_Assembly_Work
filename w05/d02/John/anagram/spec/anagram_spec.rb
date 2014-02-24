require_relative '../lib/anagram'
require 'spec_helper'

describe "#find_anagrams" do

  
  it "returns nothing if there is no match" do
    array = %w(enlists google inletsp banana)
    expect(find_anagrams("listen", array)).to eq("")
  end

  it "selects the anagram of a word from an array" do
    array = %w(enlists google inlets banana)
    expect(find_anagrams("listen", array)).to eq("inlets")
  end

  it "selects multiple anagrams from the array" do
    array = %w(enlists google inlets banana istenl stenil)
    expect(find_anagrams("listen", array)).to eq("inlets, istenl, stenil")
  end

end