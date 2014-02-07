require 'spec_helper'
require_relative '../lib/wordladder'

describe "#are_neighbors?" do
  it "determines if two words are neighbors" do
    expect(are_neighbors?("card", "curd")).to be_true
  end
end

describe "#all_neighbors" do
  it "returns all neighbors of a word" do
    expect(all_neighbors("aloe").count).to eq(6)
  end
end