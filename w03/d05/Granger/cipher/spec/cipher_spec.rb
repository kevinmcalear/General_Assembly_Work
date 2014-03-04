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

    it "encodes the sentence 'Peter is cool'" do
      expect( Cipher.encode( "Peter is cool") ).to eq("Crgre vf pbby")
    end
  end
  
end