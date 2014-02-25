require 'spec_helper'
require_relative '../lib/wl'

describe "#wordletter" do
  it "searches for a word that is no longer in the FOUR_LETTER_WORDS array" do

    base_word = wordladder

    expect( base_word[0].length ).to eq(4)
    expect( FOUR_LETTER_WORDS.include?( base_word ) ).to be_false
  end

end