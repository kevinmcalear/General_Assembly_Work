require 'spec_helper'
require_relative '../lib/gladiator'

describe Gladiator do
   subject(:gladiator) { Gladiator.new("Maximus", "Trident")}

    it "checks that a gladiator has a name" do
      expect(gladiator.has_name).to be_kind_of(String)
    end
    it "checks that a gladiator has a weapon" do
      expect(gladiator.has_weapon).to be_kind_of(String)
   
    end
  end

  describe Arena do
    subject(:arena) { Arena.new("the colosseum", "test")}

      it "checks that arena has a name" do
        expect(arena.has_name.capitalize).to be_kind_of(String)
      end
      it "checks that the arena has gladiators" do
        expect(gladiator)
      end

  end