require 'spec_helper'
require_relative '../lib/gladiator'

describe Gladiator do
   subject(:gladiator) { Gladiator.new("Maximus", "Trident")}

    it "checks that a gladiator has a name" do
      expect(gladiator.name).to be_kind_of(String)
    end
    it "checks that a gladiator has a weapon" do
      expect(gladiator.weapon).to be_kind_of(String)
   
    end
  end

  describe Arena do
    subject(:arena) { Arena.new("the colosseum", "Maximus")}

      it "checks that arena has a name" do
        expect(arena.name.capitalize).to be_kind_of(String)
      end
      it "checks that the arena has gladiators" do
        expect(arena.gladiators.push(Gladiator.new("Maximus", "Trident"))).to be_kind_of(Array)
      end
      it "checks that arena should never have > 2 gladiators" do
        expect(arena.gladiators).to have_at_most(2).items
      end
      it "checks that if 2 glads, 1 glad is killed and removed" do
         expect(arena.gladiators.push(Gladiator.new("Maximus", "Trident")))
         expect(arena.gladiators.push(Gladiator.new("Arturo", "Spear")))
         expect(arena.gladiators).to have_exactly(2).items

         let(:gladiator_one) do
         { name: "Maximus", play: "Trident" }
        end
        let(:gladiator_two) do 
         { name: "Arturo", play: "Spear"}
         end
      end

  end