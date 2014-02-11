require "spec_helper"
require_relative "../lib/wl"

describe "#four_letter_word" do
  it "takes only a 4 letter word as an argument" do
    expect(four_letter_word("hamburger")).to eq(false)
    expect(four_letter_word("aloe")).to be_kind_of(Array)
  end
end

describe "#are_neighbors?" do
  it "returns true for two words which are neighbors" do
    expect(are_neighbors?("aloe", "alae")).to be_true
  end
end
