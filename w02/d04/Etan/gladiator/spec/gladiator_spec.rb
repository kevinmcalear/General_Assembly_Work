require "spec_helper"
require_relative "../lib/gladiator"
require 'pry'

describe "Gladiator" do

  let (:gladiator) {Gladiator.new("SnoopDogg", "trident")}
  
  it "has a name" do
    expect(gladiator.name).to be_kind_of(String)
  end
  it "has a weapon" do
      expect(gladiator.weapon).to be_kind_of(String)
  end
end

describe "Arena" do

  let (:arena) {Arena.new("thunderdome")}
  let (:gladiator1) {Gladiator.new("FlavaFlav", "trident")}
  let (:gladiator2) {Gladiator.new("DrDre", "club")}

  it "has a name" do
    expect(arena.name).to be_kind_of(String)
  end
  it "has a name that is capitalized" do
    expect(arena.name).to match("Thunderdome")
  end
  it "has the ability to hold gladiators" do
    expect(arena.gladiators).to be_kind_of(Array)
  end
  it "is holding gladiators! AND ONLY TWO OF THEM" do
    expect(arena.add_gladiators(gladiator1, gladiator2)).to equal(arena.gladiators)
    expect(arena.gladiators.count).to equal(2)
  end

end