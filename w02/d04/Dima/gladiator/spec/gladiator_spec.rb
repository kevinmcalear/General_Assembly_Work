require 'spec_helper'
require_relative '../lib/gladiator'

describe "Gladiator" do
  let(:gladiator1) {Gladiator.new("Jake","trident")}
  let(:gladiator2) {Gladiator.new("Sam","club")}
  let(:gladiator3) {Gladiator.new("Bob","spear")}
describe "Arena" do
  let(:arena) {Arena.new("Grand")}

    describe "#gladiator_name" do
      it "should return a string" do
        expect(gladiator1.name).to be_kind_of(String)
      end
    end

    describe "#gladiator_weapon" do
      it "should return a string" do
        expect(gladiator1.weapon).to be_kind_of(String)
      end
    end

    describe "#Arena" do
      it "should have a name" do
        expect(arena.name).to be_true
      end

      it "should be capitalized" do
        expect(arena.name).to eq(arena.name.capitalize)
      end

      it "has a gladiators" do
        expect(arena.gladiators).to be_kind_of(Array)
      end

      context "adds third person" do
        before{arena.gladiators = [gladiator1, gladiator2]}
      end

      it "doesn't allow me add third person" do
        expect(arena.add(gladiator3)).to @gladiators 
      end
    end

    describe "#add gladiators" do
      it "should add gladiators to gladiators array" do
        expect(arena.gladiators).not_to include(gladiator2)
        expect(arena.add(gladiator2)).not_to raise_error
        expect(arena.gladiators).to include(gladiator2)
      end
    end
end
end
