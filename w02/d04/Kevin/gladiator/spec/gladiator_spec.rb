require 'spec_helper'
require_relative '../lib/gladiator'

describe Gladiator do
  subject(:kevin) { Gladiator.new("Kevin", "Trident") }

  describe "#name" do
    it "has a name" do
      expect(kevin.name).to be_kind_of( String )
    end
  end

  describe "#weapon" do
    it "has a weapon" do
      expect(kevin.weapon).to be_kind_of( String )
    end
  end
end

describe Arena do
  subject(:arena) { Arena.new("arena") }
  subject(:kevin) { Gladiator.new("Kevin", "Trident") }
  subject(:john) { Gladiator.new("John", "Club") }
  subject(:rory) { Gladiator.new("Rory", "Spear") }


  describe "#name" do
    it "has a name" do
      expect(arena.name).to be_kind_of( String )
    end

    it "should be capitalized" do
      expect(arena.name).to eq "Arena"
    end
  end

  describe "#gladiators" do
    before {arena.add_gladiators(kevin)}
    before {arena.add_gladiators(rory)}
    before {arena.add_gladiators(john)}

    it "has gladiators" do
      expect(arena.gladiators).to be_kind_of( Array )
    end

    it "should only allow 2 or less gladiators" do
      expect(arena.gladiators.count).to eq(2)
    end
  end

  describe "#add_gladiators" do
    it "adds gladiators to the arena" do
      expect(arena.gladiators).not_to include(kevin)
      expect(arena.add_gladiators(kevin)).not_to raise_error
      expect(arena.gladiators).to include(kevin)
    end
  end



  describe "#fight" do
    before {arena.add_gladiators(kevin)}
    
    it "makes the gladiators BATTLE!!!!" do
      expect(arena.fight).not_to raise_error
    end

    it "only works when there is two gladiators" do
      expect(arena.gladiators.count == 2).not_to raise_error
    end

    context "gladiator one has the winning the hand" do
      before {arena.add_gladiators(kevin)}
      it "wins the game!" do
        expect( arena.fight ).to eq("Kevin wins!")
        expect(arena.gladiators).not_to include(rory)
      end
    end

    context "gladiator two has the winning hand" do
      before {arena.add_gladiators(rory)}
      it "wins the game!" do
        expect( arena.fight ).to eq("Rory wins!")
        expect(arena.gladiators).to include(kevin)
      end
    end
  end










end

