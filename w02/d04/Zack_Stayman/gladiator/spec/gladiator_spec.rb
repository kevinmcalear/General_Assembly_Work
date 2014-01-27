require "spec_helper"
require_relative '../lib/gladiator'
# ### Gladiator Spec

describe "Gladiator" do

  let(:gladiator) {Gladiator.new("Joe", "Spear")}
# * A gladiator has a name


describe "#name" do
  it "checks to see if a gladiator has a name" do
    expect(gladiator.name).to be_kind_of(String)
  end
end
  # * A gladiator has a weapon
  describe "#weapon" do
    it "checks to see if a gladiator has a weapon" do
      expect(gladiator.weapon).to  be_kind_of(String)
    end
  end
end


describe "Arena" do
  let(:arena) {Arena.new("gArden")}

  describe "#name" do
    # * An arena has a name
    it "checks to see if the arena has a name" do
      expect(arena.name).to be_kind_of(String)
    end
    # * The arena name should be capitalized
    it "checks to see if the name is capitalized" do
      expect(arena.name[0]).to eq("G")
    end
  end

  describe "#gladiators" do
      # * An arena can have gladiators
      it "checks to see if there is a place to store gladiators" do
        expect(arena.gladiators).to be_kind_of(Array)
      end
    end

    describe "#add" do
      let(:gladiator) {Gladiator.new("Mark", "Spear")}
      let(:glad) {Gladiator.new("Matthew", "Trident")}
      let(:g) {Gladiator.new("Peter", "Club")}
      let(:punk) {Gladiator.new("Luke","Trident")}
      it "adds a gladiator to the arena" do
        expect(arena.add(gladiator)).to be(arena.gladiators)
      end
      #   * The arena should never have more than 2 gladiators in it at a time
      context "it expects no more than two people in the arena" do
        before {arena.add(gladiator)}
        before {arena.add(glad)}
        it "checks to makes sure that there are never more than two gladiators in the arena" do
          expect(arena.add(g)).to eq("There cannot be more than two gladiators in the arena")
        end


        it "one gladiator wins" do
          expect(arena.fight).to eq("Matthew defeats Mark")
          expect(arena.gladiators.length).to be(1)
        end
      end

      context "both gladiators die" do
        before {arena.add(glad)}
        before {arena.add(punk)}
        it "checks to make sure both gladiators die if they are using the same weapon" do
          expect(arena.fight).to eq("both gladiators die")
          expect(arena.gladiators.length).to be(0)
        end
      end
    end
  end


# ### Arena Spec


# 

# * You can add a gladiator to the arena
# * If there are two gladiators in the arena, you can call a fight method that will kill one of the gladiators and remove them from the arena.
#   * Winning conditions:
#     * Trident beats Spear
#     * Spear beats Club
#     * Club beats Trident
#     * If the two gladiators have the same weapon, they both die.

# ### Bonus

# * Add a method to remove gladiators from the arena by name

# * Update your winning conditions so that if the gladiator named "Maximus" is in the fight, he should always win.

# * Add a method to check to see if the crowd is entertained (.entertained?). The crowd is only entertained if Maximus is in the arena.

# * When a fight is over, before the gladiator is killed and removed, the user should be prompted to put their thumbs up or down. If they vote down, remove the losing gladiator from the arena. If they vote up, the gladiator stays alive in the arena.

