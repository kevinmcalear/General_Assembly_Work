require 'spec_helper'
require_relative '../lib/cipher'
require 'pry'

describe Cipher do

  describe "::encode" do
    it "encodes the word 'hello'" do
      expect( Cipher.encode( "hello") ).to eq("svool")
    end

    it "encodes the word 'peter'" do
      expect( Cipher.encode( "peter") ).to eq("kvgvi")
    end


  end

  describe "::encode2" do
      it "handles z and a" do
      expect( Cipher.encode2( "zach") ).to eq("azxs")
    end
  end
  
end