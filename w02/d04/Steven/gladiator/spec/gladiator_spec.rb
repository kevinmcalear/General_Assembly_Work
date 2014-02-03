require 'spec_helper'
require_relative '../lib/gladiator'


describe Gladiator do
  subject(:glad) {Gladiator.new("Russel", "Axe")}

  it "has a name" do
    expect(glad.name).to be_kind_of(String)
  end

  it "has a weapon do" do
    expect(glad.weapon).to be_kind_of(String)
  end

end

describe Arena do
  let(:thor) {Gladiator.new("Thor", "Hammer")}
  subject(:arena) {Arena.new("arenaaa")}

  it "has a name" do
    expect(arena.name).to be_kind_of(String)
  end

  it "should have a capitalized name" do
    expect(arena.name).to eq("Arenaaa")
  end

  it "can have gladiators" do
    expect(arena.gladiators).to be_kind_of(Array)
  end

  describe "#add" do
    let(:gladiator) {Gladiator.new("Bill", "Sword")}
    before do
      arena.add(gladiator)
    end
    it "can add gladiators to the arena" do
      expect(arena.gladiators).to include(gladiator)
    end

    it "has less than 2 gladiators in the arena" do
      expect(arena.gladiators.count).to be <= 2
    end

    end

  # * If there are two gladiators in the arena, you can call a fight method that will kill one of the gladiators and remove them from the arena.
  # * Winning conditions:
  #   * Trident beats Spear
  #   * Spear beats Club
  #   * Club beats Trident
  #   * If the two gladiators have the same weapon, they both die.


  describe "#fight" do
    let(:gladiator_1) {Gladiator.new("Zeus", "Trident")}
    let(:gladiator_2) {Gladiator.new("Ed", "Spear")}
    
    it "if there are two glads, they fight" do
      arena.add(gladiator_1)
      arena.add(gladiator_2)
      expect(arena.gladiators.size).to eq(2)
    end

    it "kills one of the gladiators if fight is called" do
      expect( arena.fight(gladiator_1, gladiator_2)).to eq("Zeus wins!")

    end


  end

end




