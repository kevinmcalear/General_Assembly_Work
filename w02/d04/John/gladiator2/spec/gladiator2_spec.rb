require 'spec_helper'
require_relative '../lib/gladiator2'

describe Gladiator do
  let (:maximus) { Gladiator.new("Maximus", "spear") }
  
  it "should have a name" do
    expect( maximus.name ).to eq("Maximus")
  end

  it "should have a weapon" do
    expect( maximus.weapon ).to eq("spear")
  end
end

describe Arena do
  let (:arena) { Arena.new("Colosseum")}
  let (:maximus) { Gladiator.new("Maximus", "spear") }
  let (:julienne) { Gladiator.new("Julienne", "club") }
  let (:poseidon) { Gladiator.new("Poseidon", "trident") }
  let (:leonidas) { Gladiator.new("Leonidas", "spear") }
  let (:aquaman) { Gladiator.new("Aquaman", "trident") }

  it "should have a name" do
    expect( arena.name ).to eq("Colosseum")
  end

  describe "#add_gladiator" do 
    context "before any gladiators added" do

      it "should be able to add a gladiator" do
        arena.add_gladiator(maximus)  
        expect( arena.gladiators ).to include(maximus)
      end

      it "should be able to add two gladiators" do
        arena.add_gladiator(julienne)
        arena.add_gladiator(poseidon)
        expect( arena.gladiators.length ).to eq(2)
      end
    end

    context "with two gladiators in the arena" do
      before do
        arena.add_gladiator(julienne)
        arena.add_gladiator(poseidon)
      end
      it "should take no more gladiators" do
        arena.add_gladiator(maximus)
        expect( arena.gladiators.length ).to eq(2)
      end
    end
  end

  describe "#remove_gladiator" do
    before { arena.add_gladiator(maximus) }

    it "should remove Maximus from the arena" do
      arena.remove_gladiator(maximus.name)
      expect( arena.gladiators ).to be_empty
    end
  end

  describe "#fight" do
    context "with no gladiators in the arena" do
      it "should have no fight" do
        arena.fight
        expect( arena.gladiators.length ).to eq(0)
      end
    end

    context "with one gladiator in the arena" do
      before { arena.add_gladiator(maximus) }

      it "should have no fight" do
        arena.fight
        expect( arena.gladiators.length ).to eq(1)
      end
    end    

    context "with Julienne's club vs Poseidon's trident" do
      before do
        arena.add_gladiator(julienne)
        arena.add_gladiator(poseidon)
      end

      it "should have club beat trident" do
        arena.fight
        expect( arena.gladiators ).to eq([julienne])
      end
    end

    context "with Maximus's spear vs Poseidon's trident" do
      before do
        arena.add_gladiator(maximus)
        arena.add_gladiator(poseidon)
      end

      it "Maximus should win" do
        arena.fight
        expect( arena.gladiators ).to eq([maximus])
      end
    end

    context "with Leonidas's spear vs Poseidon's trident" do
      before do
        arena.add_gladiator(leonidas)
        arena.add_gladiator(poseidon)
      end

      it "should have trident beat spear" do
        arena.fight
        expect( arena.gladiators ).to eq([poseidon])
      end
    end

    context "with Julienne's club vs Maximus's spear" do
      before do
        arena.add_gladiator(julienne)
        arena.add_gladiator(maximus)
      end

      it "should have spear beat club" do
        arena.fight
        expect( arena.gladiators ).to eq([maximus])
      end
    end

    context "with Poseidon's trident vs Aquaman's trident" do
      before do
        arena.add_gladiator(poseidon)
        arena.add_gladiator(aquaman)
      end

      it "should kill both" do
        arena.fight
        expect( arena.gladiators ).to be_empty
      end
    end

    context "with Maximus's spear vs Leonidas's spear" do
      before do
        arena.add_gladiator(maximus)
        arena.add_gladiator(leonidas)
      end

      it "Maximus should win" do
        arena.fight
        expect( arena.gladiators ).to eq([maximus])
      end
    end
  end

  describe "#entertained?" do
    context "if Maximus is not in the arena" do
      it "should not be entertained" do
        arena.add_gladiator(aquaman)
        arena.add_gladiator(leonidas)
        expect( arena.entertained? ).to eq("Not entertained")
      end
    end

    context "if Maximus is in the arena" do
      it "should be entertained" do
        arena.add_gladiator(maximus)
        expect(arena.entertained? ).to eq("Entertained")
      end
    end
  end
end

