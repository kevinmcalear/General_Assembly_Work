require 'spec_helper'
require '../anagram'

describe Anagram 
  it "returns anagrams of word from list of anagrams" do 
    expect anagram("listen",%w(enlists google inlets banana).to eq(['inlets'])
  end
