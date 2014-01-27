require 'pry'
require 'spec_helper'
require_relative '../lib/gladiator'

##########
#### Gladiator
##########

describe Gladiator do
  subject(:gladiator) { Gladiator.new("Poseidon", "light saber") }

  it "has a name" do
    expect(gladiator.name).to be_kind_of(String)
  end
  
  it "has a weapon" do 
    expect(gladiator.weapon).to be_kind_of(String)
  end

end

##########
#### Arena
##########

describe Arena do 
  subject(:arena) { Arena.new("Colosseum")}
  subject(:poseidon) { Gladiator.new("Poseidon", "trident")}
  subject(:aries) { Gladiator.new("Aries", "spear")}
  subject(:scout) { Gladiator.new("Scout", "club")}

  it "has a name" do
    expect(arena.name).to be_kind_of(String)
  end

  it "name is capitalized" do
    expect(Arena.new("colosseum").name).to eq("Colosseum")
  end

  it "can have gladiators" do 
    expect(arena.gladiators).to be_kind_of(Array)
  end


  describe "#add_gladiator" do
    before do
      arena.add_gladiator(poseidon)
    end
    it "can add a gladiator" do
      expect(arena.gladiators.count).to eq(1)
    end
    
    context "more gladiators" do
      before do
        arena.add_gladiator(aries)
      end
      it "the arena can have 2 gladiators" do
        expect(arena.gladiators.count).to eq(2)
      end
      it "the arena can't have more than 2 gladiators" do
        expect(arena.add_gladiator(scout)).to eq("Only two gladiators go in. Only one comes out.")
      end
    end
  end

  describe "#ready?" do
    before do
      arena.add_gladiator(poseidon)
    end
    it "has less than 2 gladiators in the arena" do
      expect(arena.ready?).to be_false
    end
    context "two gladiators" do
      before do
        arena.add_gladiator(aries)
      end
      it "has 2 gladiators" do
        expect(arena.ready?).to be_true
      end
    end
  end

  describe "#fight" do
    before do
      arena.add_gladiator(poseidon)
      arena.add_gladiator(aries)
    end
    subject(:fight) { arena.fight(poseidon, aries) }
    it "player 1 wins" do
      #expect(fight).to eq("#{arena.gladiators[1].name} wins! #{arena.gladiators[0].name} is dead.")
      expect(arena.gladiators.count).to eq(1)
    end
    context "player 2 wins" do
      #before { arena.gladiators[0].weapon = "club" } 
      it "player 2 wins" do
        #expect(fight).to eq("#{arena.gladiators[0].name} wins! #{arena.gladiators[1].name} is dead.")
        expect(arena.gladiators.count).to eq(1)
      end
    end
      it "both players die" do
        expect(arena.gladiators.count).to eq(0)
      end
    

  end
end



#     * If the two gladiators have the same weapon, they both die.








