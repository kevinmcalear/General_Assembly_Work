require 'spec_helper'
require_relative '../lib/calc'

describe Gladiator do 

  describe "#name" do
    it "has a name" do
      expect(Gladiator.new.name).to be_kind_of(String)
    end
  describe "#weapon" do
    it "has a weapon" do
      expect(Gladiator.new.weapon).to be_kind_of(String)
    end
  end
end

describe Area do 
  describe "#name" do
    it "has a name" do
      expect(Gladiator.new.name).to be_kind_of(String)
    end

    it "should be capitalized" do
      expect(Gladiator.new.name).to 
  end
end