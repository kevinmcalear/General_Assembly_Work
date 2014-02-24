require 'spec_helper'
require_relative '../lib/anagram.rb'

describe "#anagram" do
	it "will select the word that is an anagram of the word passed" do
	expect(anagram("listen", ["google", "dog", "cat", "inlets"])).to eq("inlets")	
end
end