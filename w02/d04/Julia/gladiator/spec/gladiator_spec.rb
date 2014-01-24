require 'spec_helper'
require_relative '../lib/gladiator'
require 'pry'

describe Gladiator do
  subject(:glad){Gladiator.new("vlad", "sword")}

  it "ensures the gladiator has a name" do
    expect(glad.glad_name).to be_kind_of(String)
  end #ensures name end

  it "ensures the gladiator has a weapon" do
    expect(glad.weapon).to be_kind_of(String)
  end #ensures weapon end

end #Describe Gladiator-end

describe Arena do
  subject(:arena){Arena.new("pantheon")}

  it "ensures the arena has a name" do
    expect(arena.arena_name).to be_kind_of(String)
  end #ensures the arena has a name end

  it "expects the arena name to be capitalized" do
    expect(arena.arena_name[0]).to eq("P")
  end #expects arena name end

end #describe Arena end

describe "Olympia" do
  let(:olympia) {Arena.new("Olympia")}
  let(:thor) {Gladiator.new("Thor", "hammer")}

  it "can have gladiators" do 
    expect(olympia.gladiators).to be_kind_of(Array)
  end #can have gladiators end

  it "can add gladiators to the arena" do
    expect(olympia.gladiators.push(thor)).to include(thor)
  end #can add gladiators end

  describe "#add" do 
    let(:gladiator) { Gladiator.new("Thor", "hammer")}
            before do 
            olympia.add(gladiator)
          end #before end
        it "adds a gladiator to the arena" do 
        expect(olympia.gladiators).to include(gladiator)
      end #adds gladiator end
  end #Describe #add end
  
  it "cannot have more than two gladiators at a time" do
    expect(olympia.gladiators.size).to be <= 2
  end #more than two gladiators end
end #Describe add

  describe "#fight" do
    let(:gladiator_1) {Gladiator.new("Mike", "trident")}
    let(:gladiator_2) {Gladiator.new("George", "spear")}
    let(:gladiator_3) {Gladiator.new("Sammy", "club")}

    it "if two gladiators – they will fight" do
      olympia.add(gladiator_1)
      olympia.add(gladiator_2)
      expect(olympia.gladiators.size).to eq(2)
    end #End gladiators will fight

    it "if < two gladiators – there's no fight!" do
      expect(olympia.fight).to match "No fight tonight!"
    end #End < two gladiators 

    context "gladiator one wins" do
      it "wins the fight" do
        expect(olympia.fight(gladiator_1, gladiator_two)).to eq("Trident wins!")
      end
    end

    context "gladiator two wins" do
      it "wins the fight" do
      expect(olympia.fight(gladiator_2, gladiator_3)).to eq("Spear wins!")
    end
  end

  context "gladiator three wins" do
    it "wins the fight" do
      expect(olympia.fight(gladiator_3, gladiator_1)).to eq("Club wins!")
  end
end

  context "gladiators have the same weapon, both die" do
    it "both die" do
      expect(olympia.fight(gladiator_1, gladiator_2)).to eq("Both gladiators die!")
      expect(olympia.gladiators.size).to eq(0)
  end
end
  
  context "one gladiator died, was removed from array" do
    it "one dies" do
      expect(olympia.gladiators.size).to eq(1)
    end
  end
  #it "allows a fight to be called if there are two gladiators" do
  #  expect(olympia.fight).
  #end

end #Describe Olympia end