require 'spec_helper'
require_relative '../lib/cipher'

describe Cipher do

  describe "::encode" do
    it "encodes the word 'hello'" do
      expect( Cipher.encode( "hello") ).to eq("svool")
    end

    it "encodes the word 'peter'" do
      expect( Cipher.encode( "peter") ).to eq("kvgvi")
    end

    it "encodes the word 'apple'" do
      expect( Cipher.encode( "apple") ).to eq("zkkov")
    end

    it "encodes the word 'zoo'" do
      expect( Cipher.encode( "zoo") ).to eq("all")
    end
  end
  
end