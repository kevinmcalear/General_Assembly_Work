require 'spec_helper'
require_relative '../lib/cipher'

describe Cipher do

  describe "::encode" do
    it "encodes the word 'hello'" do
      expect( Cipher.encode2( "hello") ).to eq("svool")
    end

    it "encodes the word 'peter'" do
      expect( Cipher.encode2( "peter") ).to eq("kvgvi")
    end
  end
  
end