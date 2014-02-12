require 'rspec'
require_relative "../lib/anagram.rb"

describe Anagram do 

  it "#is_anagram" do 
    expect(Anagram.is_anagram("listen","inlets") ).to eq(true)
  end 

  it "#select_anagram"do 
    expect(Anagram.select_anagram("listen", ["enlists","google","inlets","banana"]   ) ).to eq("inlets")
  end 
end 

