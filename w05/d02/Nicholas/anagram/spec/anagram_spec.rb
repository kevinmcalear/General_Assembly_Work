require 'spec_helper'
require_relative '../lib/anagram.rb'

describe '#anagram' do
  it "should return the word when 2 words have the same letters" do
    expect(anagram("listen", ["inlets"])).to eq("inlets")
  end 

  it "should return the word in an array with same letters" do 
    expect(anagram("sewn", %w(my friend is called swen))).to eq("swen")
  end
end
