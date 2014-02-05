require 'spec_helper'
require_relative '../lib/cipher'

describe Cipher do

  describe "::encode" do
    it "encodes the word 'hello'" do
      expect( Cipher.encode( "hello") ).to eq("uryyb")
    end

    it "encodes the word 'peter'" do
      expect( Cipher.encode( "peter") ).to eq("crgre")
    end

    it "encodes a full sentence" do
      expect( Cipher.encode( "I want some ice cream") ).to eq("I jnag fbzr vpr pernz")
    end
  end
end