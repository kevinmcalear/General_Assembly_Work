require 'spec_helper'
require_relative '../lib/gladiator'

### Gladiator Spec

# * A gladiator has a name
# * A gladiator has a weapon

describe Gladiator do 
  let(:gladiator){Gladiator.new("Steve")}

  describe "#name" do 
  it "has a name" do
    expect(gladiator.name).to be_kind_of(String)
  end
end
  describe "#weapon" do
  it "has a weapon" do
    expect(gladiator.weapon).to be_kind_of(String)
  end
end
  
end

### Arena Spec

# * An arena has a name
# * The arena name should be capitalized
# * An arena can have gladiators
# * You can add a gladiator to the arena
#   * The arena should never have more than 2 gladiators in it at a time
# * If there are two gladiators in the arena, you can call a fight method that will kill one of the gladiators and remove them from the arena.
#   * Winning conditions:
#     * Trident beats Spear
#     * Spear beats Club
#     * Club beats Trident
#     * If the two gladiators have the same weapon, they both die.

describe Arena do
  let(:arena){Arena.new("Thunderdome")}
  let(:augustus){Gladiator.new("Augustus")}
  let(:julius){Gladiator.new("Julius")}
  let(:steve){Gladiator.new("Steve")}

  describe "#name" do
    it "has a name" do
      expect(arena.name).to be_kind_of(String)
    end
    it "should be capitalized" do
      expect(Arena.new("thunderdome").name).to eq("Thunderdome")
    end
  end

  describe "#gladiators"
    it "has gladiators" do
      expect(arena.gladiators).not_to raise_error
    end

  context "add gladiators to arena" do
    before {arena.add_gladiator(augustus)}
    before {arena.add_gladiator(julius)}
    before {arena.add_gladiator(steve)}
    it "adds gladiators" do
      expect(arena.gladiators.count).to be >= 2
    end
    it "only holds 2 gladiators" do
      expect(arena.gladiators.count).to be == 2
    end
    it "fights!" do
      expect(arena.fight).not_to raise_error
    end
  end

  context "only 1 gladiator" do
    before {arena.add_gladiator(augustus)}
    it "fights with one" do
      expect(arena.fight).to eq("Not enought gladiators to fight!")
    end
  end

end





