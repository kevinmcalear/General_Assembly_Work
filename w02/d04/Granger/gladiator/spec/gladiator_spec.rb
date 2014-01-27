# require 'spec_helper'
require_relative '../lib/gladiator'


describe Gladiator do
  subject(:gladiator) { Gladiator.new("Steve", :trident)}

  describe "#name" do
    it "gets name" do
      expect(gladiator.name).to eq("Steve")
    end
  end


  describe "#weapon" do
  
    # before(:each) do
    #   gladiator.weapon = :trident
    # end

    it "gets weapon" do
      expect(gladiator.weapon).to eq(:trident)
    end
  end




end
