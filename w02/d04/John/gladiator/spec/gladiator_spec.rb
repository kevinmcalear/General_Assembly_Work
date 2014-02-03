require 'spec_helper'
require_relative '../lib/gladiator'
require 'pry'

describe Gladiator do
  let(:gladiator) { Gladiator.new("Maximus", "weapon") }

  it "has a name" do
    expect(gladiator.name).to be_kind_of(String)
  end
  
  it "has a weapon" do
    expect( gladiator.weapon ).to be_kind_of(String)
  end

end

describe Arena do
  let(:arena) { Arena.new("madison square") }
  let(:maximus) { Gladiator.new("Maximus", "trident") }
  # let(:weakling) { Gladiator.new("Weakling", "spear") }
  let(:sheera) { Gladiator.new("Sheera", "club") }

  it "has a name" do
    expect( arena.name ).to be_kind_of(String)
  end

  it "has a capitalized name" do
    expect( arena.name ).to eq("Madison square")
  end

  describe "gladiators added to arena" do
    before { arena.add_gladiator(maximus) }
    before { arena.add_gladiator(sheera) }
  
    it "should have a gladiator" do
      arena.gladiators.should have_at_least(1).items
    end
  
    it "should take multiple gladiators" do
      arena.gladiators.should have_at_least(2).items
    end

    before(:each) { arena.add_gladiator(sheera) }
    it "should take no more than 2 gladiators" do
      expect( arena.gladiators.count ).to eq(2)
    end  
  end
  
  describe "arena can host fights" do
    before { arena.add_gladiator(maximus) }

    it "must have two gladiators to fight" do
      # binding.pry
      expect( arena.fight ).to eq("Not enough gladiators for a fight!")
    end
  end

  describe "weapon test" do
    before do 
      arena.add_gladiator(Gladiator.new("Maximus", "club")) 
      arena.add_gladiator(Gladiator.new("Sheera", "spear"))
    end

    it "should have club lose to spear" do
      expect( arena.fight ).to eq("Maximus is dead!")
    end
  end

  describe "weapon test" do
    before do
      arena.add_gladiator(Gladiator.new("Maximus", "trident"))
      arena.add_gladiator(Gladiator.new("Sheera", "club"))
    end
    
    it "should have trident lose to club" do
      expect( arena.fight ).to eq("Maximus is dead!")
    end
  end

  describe "weapon test" do
    before { arena.add_gladiator(Gladiator.new("Maximus", "spear")) }
    before { arena.add_gladiator(Gladiator.new("Sheera", "trident")) }
    it "should have spear lose to trident" do
      expect( arena.fight ).to eq("Maximus is dead!")
    end
  end

  describe "weapon test" do
    before { arena.add_gladiator(Gladiator.new("Maximus", "trident")) }
    before { arena.add_gladiator(Gladiator.new("Sheera", "trident")) }
    it "should kill both if weapons are the same" do
      expect( arena.fight ).to eq("Both dead!")
    end
  end
end















