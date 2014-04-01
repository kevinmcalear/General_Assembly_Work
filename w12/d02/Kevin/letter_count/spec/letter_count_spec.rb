require 'spec_helper'
require_relative '../lib/letter_count'

describe "letter_count" do 
  it "takes a word" do
    expect(letter_count("moon")).not_to raise_error
  end

  it "counts each letter in a word" do
    expect(letter_count("moon")).to eq({m: 1, o: 2, n: 1})
    expect(letter_count("hello")).to eq({h: 1, e: 1, l: 2, o: 1})
    expect(letter_count("kevin")).to eq({k: 1, e: 1, v: 1, i: 1, n: 1})
  end

  it "doesn't allow for spaces" do 
    expect(letter_count("mo on")).to eq({m: 1, o: 2, n: 1})
    expect(letter_count("h ello ")).to eq({h: 1, e: 1, l: 2, o: 1})
  end
end