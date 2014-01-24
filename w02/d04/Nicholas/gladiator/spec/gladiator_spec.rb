require 'spec_helper'
require_relative '../lib/gladiator'

describe Gladiator do
let(:gladiator_1) { Gladiator.new("Brutus", "Spear") }

  describe "#name" do
    it "should initialize a name to a gladiator" do
      expect( gladiator_1.name ).to eq("Brutus")
    end
  end

  describe "#weapon" do 
    it "should assign a weapon to the gladiator" do
      expect( gladiator_1.weapon ).to eq("Spear")
    end
  end
end

describe Arena do
let(:arena_1) { Arena.new("crimsodrome") }

  describe "#name" do 
    it "should initialize a name to an arena" do
      expect( arena_1.name ).to be_kind_of(String)
    end

  describe "#capitalize_name" do
    it "should capitalize the arena name" do
      expect( arena_1.name ).to eq("Crimsodrome")
    end 
  end


  describe "#gladiators" do
    it "should make an array for gladiators" do
      expect( arena_1.gladiators ).to be_kind_of(Array)
    end
  end

  describe "#add_gladiators" do
    let(:gladiator_2) { Gladiator.new("Brutus", "Spear")}
    let(:gladiator_3) { Gladiator.new("Trikonus", "Club")}
    let(:gladiator_4) { Gladiator.new("Juliatto", "Club")}

    it "should add gladiators to the array of gladiators" do
      expect( arena_1.add_gladiators(gladiator_2.name) ).not_to raise_error
    end

    before {arena_1.add_gladiators(gladiator_2)}
    before {arena_1.add_gladiators(gladiator_3)}
    before {arena_1.add_gladiators(gladiator_4)}

    it "should not allow more than 2 gladiators in the arena" do
      expect( arena_1.gladiators.count ).to be < 3
    end
  end

  describe "#fight" do
    let(:gladiator_2) { Gladiator.new("Brutus", "Spear")}
    let(:gladiator_3) { Gladiator.new("Trikonus", "Club")}
    before {arena_1.add_gladiators(gladiator_2)}
    before {arena_1.add_gladiators(gladiator_3)}

    it "return the winner's name in a fight where Spear beats a Club" do
      expect( arena_1.fight ).to eq("Brutus wins!")
    end
  end

  describe "#fight" do
    let(:gladiator_2) { Gladiator.new("Brutus", "Spear")}
    let(:gladiator_3) { Gladiator.new("Hector", "Spear")}
    before {arena_1.add_gladiators(gladiator_2)}
    before {arena_1.add_gladiators(gladiator_3)}

    it "returns that both gladiators die when same weapon exists" do
      expect( arena_1.fight ).to eq("Both are dead!")
    end
  end
end
end


