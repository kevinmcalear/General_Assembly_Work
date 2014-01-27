require "spec_helper"
require_relative "../lib/gladiator"

describe Gladiator do
  subject(:gladiator){Gladiator.new("Bob")}

  describe "#name" do
    it "returns the name of a gladiator" do
      expect(gladiator.name).to be_kind_of(String)
    end #it
  end #desc name

  describe "#weapon" do
    it "returns the weapon a gladiator is weilding" do
      expect(gladiator.weapon).to be_kind_of(Symbol)
    end #desc weapon
  end #it
end #des gladiator


describe Arena do
subject(:barclays){Arena.new("barclays")}
subject(:gladiator1){Gladiator.new("Bob")}
subject(:gladiator2){Gladiator.new("Joe")}
subject(:gladiator3){Gladiator.new("Billy")}

  describe "#name" do
      it "returns the Arena's name capitalized" do
        expect(barclays.name).to eq("Barclays")
      end # it
    end # describe name

  describe "#participating" do
    it "returns an array of gladiators in the arena" do
      expect(barclays.participating(gladiator1)).to be_kind_of(Array)
    end #it
    it "returns an the gladiators that are participating" do
      expect(barclays.participating(gladiator1)).to include(gladiator1)
    end #it
  end #desc participating

  describe "#beats" do
    before "get 2 gladitors to participate" do
      barclays.participating(gladiator1)
      barclays.participating(gladiator2)
    end #before
      context "describe which weapons beat the others" do
        it "sexappeal beats intelligence" do
          expect(barclays.beats).to be_kind_of(String)
        end #it
      end #context
  end #desc beats

end #desc arena