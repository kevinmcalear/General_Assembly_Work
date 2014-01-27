require 'spec_helper'
require_relative '../lib/gladiator'

describe "Gladiator" do
  let(:maximus) { Gladiator.new("Maximus", "Trident") }
  let(:marcus) { Gladiator.new("Marcus", "Spear") }
  let(:commodus) { Gladiator.new("Commodus", "Club") }

  it "has a name" do 
    expect(maximus.name).to eq("Maximus")
  end
  it "has a weapon" do 
    expect(maximus.weapon).to eq("Trident")
  end

  
  describe "Arena" do 
    let(:colosseum) { Arena.new("colosseum") }

    it "has a name" do
      expect(colosseum.name).to eq("Colosseum")
    end

    it "has a capitalized name" do  
      expect(colosseum.name).to eq(colosseum.name.capitalize)
    end

    it "can have gladiators" do
      expect(colosseum.gladiators).to be
    end

    context "gladiators in the arena" do 
      before do
        colosseum.add_gladiator(commodus)
        colosseum.add_gladiator(marcus)
        colosseum.add_gladiator(maximus)
      end

      it "can add a gladiator to the arena" do
        expect(colosseum.gladiators.count).to be > 0
      end

      it "can never have more than 2 gladiators at a time" do 
        expect(colosseum.gladiators.count).to be < 3
      end

      it "has the last two gladiators added in the arena" do 
        expect(colosseum.gladiators).to eq([marcus, maximus])
      end

      it "can fight them and Gladiator with Trident beats Spear" do 
        expect(colosseum.fight).to eq("Maximus wins!")
      end

    end


  end

end














