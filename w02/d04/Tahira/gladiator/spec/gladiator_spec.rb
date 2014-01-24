require_relative '../lib/gladiator'
require '~/dev/wdi/WDI_NYC_12/w02/d04/Tahira/gladiator/spec/spec_helper'
  
describe "The Match:" do
  let(:gladiator) {Gladiator.new("Tahira", :trident)}
  let(:arena) {Arena.new("the arena")}
  let(:glad2) {Gladiator.new("Figher", :spear)}
  let(:glad3) {Gladiator.new("Figher", :club)}

  describe "The Gladiator" do

    it "has a name" do
      expect(gladiator.name).to be_kind_of(String)
    end

    it "has a weapon" do
      expect(gladiator.weapon).to be_kind_of(Symbol)
    end
  end



  describe "The Arena" do
    it "has a capitalized name" do
      expect(arena.name).to be_kind_of(String)
      expect(arena.name).to eq("The arena")
    end

    it "can have gladiators added to it" do
      expect{ arena.add(gladiator) }.not_to raise_error
    end

  end

  context "no more than two gladiators in arena" do
    it "can have no more than two gladiators in it" do
      expect(arena.gladiators.count).to be <= 2
    end
  end

  context "cannot add more than 3 gladiators to arena" do
    before do
      arena.add(glad2)
      arena.add(gladiator)
    end

    it "cannot add another gladiator" do
      expect(arena.add(glad3)).to match "More gladiators cannot enter"
    end
  end

  context "fight" do
    before do
      arena.add(glad2)
      arena.add(gladiator)
    end

    it "returns one gladiator winner" do 
      expect(arena.fight).to match "Tahira wins"
    end
  end

end