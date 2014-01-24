require 'spec_helper'
require_relative '../lib/gladiator'

describe Gladiator do 
  describe "#name" do 
    it "should return a Gladiator name" do 
      expect( Gladiator.new.name("Person One")).to eq("Person One")
    end
  end

  describe "#weapon" do 
    it "should return a weapon name"
      expect( Gladiator.new.weapon("Weapon Item")).to eq("Weapon Item")
    end
end

describe Arena do 
    describe "#name" do 
      it "should return name capitalized" do 
        expect ( Arena.new.name("name")).to eq("Name")
      end
  end
end

