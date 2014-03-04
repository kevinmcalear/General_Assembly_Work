require 'spec_helper'
require_relative '../lib/anagram'
require 'pry'

describe "#anagram" do
 it "takes array of words and splits"  do
  expect(anagram(["enlists", "google", "inlets", "banana"])).to eq"inlets"
end
end
