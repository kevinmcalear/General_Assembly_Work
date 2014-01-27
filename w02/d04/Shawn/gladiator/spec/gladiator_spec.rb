require 'spec_helper'
require_relative '../lib/gladiator'

describe Gladiator do 
  let(:gladiator) { Gladiator.new("Vesuvius", "Trident") }

    it "has a name" do 
      expect(gladiator.name).to eq("Vesuvius")
    end

    it "has a weapon" do 
      expect( gladiator.weapon ).to eq("Trident")
    end
  end



  describe Arena do
    let(:coliseum) { Arena.new("coliseum") }

    it "has a name which displays capital" do 
      expect( coliseum.name ).to eq("COLISEUM")
    end

    it "has gladiators" do 
      expect( coliseum.gladiators ).to be_kind_of(Array)
    end

    describe "#add" do 
        let(:gladiator) { Gladiator.new("Vesuvius", "Trident")}
            before do 
            coliseum.add(gladiator)
          end
        it "adds a gladiator to the arena" do 
        expect(coliseum.gladiators).to include(gladiator)
        end
      end

    describe "#check_num_gladiators" do
      let(:gladiator) { Gladiator.new("Vesuvius", "Trident")}
      let(:gladiator2) {Gladiator.new("Christian", "Spear")}
      let(:gladiator3) {Gladiator.new("Steve", "Club")}
        before do 
          coliseum.add(gladiator)
          coliseum.add(gladiator2)
          coliseum.add(gladiator3)
          coliseum.check_num_gladiators
        end

        it "never has more than two gladiators in the arena" do
        expect(coliseum.gladiators.count).to be <= 2
      end
    end

    describe "#fight " do 
        let(:gladiator) { Gladiator.new("Vesuvius", "Trident")}
        let(:gladiator2) {Gladiator.new("Christian", "Spear")}
        before do
          coliseum.add(gladiator)
          coliseum.add(gladiator2)
          coliseum.fight
        end
        it "has gladiators fight" do
          expect(coliseum.gladiators.count).to eq(1)
          #expect(coliseum.fight).to eq("#{gladiator.name} wins!")
      end
    end
context "spear beats club" do
        let(:gladiator) { Gladiator.new("Vesuvius", "Spear")}
        let(:gladiator2) {Gladiator.new("Christian", "Club")}
        before do
          coliseum.add(gladiator)
          coliseum.add(gladiator2)
          coliseum.fight
        end
        it "has gladiators fight" do
          expect(coliseum.gladiators.count).to eq(1)
          #expect(coliseum.fight).to eq("#{gladiator.name} wins!")
      end
    end
    context "club beats trident" do 
        let(:gladiator) { Gladiator.new("Vesuvius", "Club")}
        let(:gladiator2) {Gladiator.new("Christian", "Trident")}
        before do
          coliseum.add(gladiator)
          coliseum.add(gladiator2)
          coliseum.fight
        end
        it "has gladiators fight" do
          expect(coliseum.gladiators.count).to eq(1)
        end
      end
      context "tie results in death to both" do
      let(:gladiator) { Gladiator.new("Vesuvius", "Club")}
        let(:gladiator2) {Gladiator.new("Christian", "Club")}
        before do
          coliseum.add(gladiator)
          coliseum.add(gladiator2)
          coliseum.fight
        end
        it "has gladiators fight" do
          expect(coliseum.gladiators.count).to eq(0)
        end
      end


end


