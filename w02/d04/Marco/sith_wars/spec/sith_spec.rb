require 'spec_helper'
require_relative '../lib/sith'
require 'pry'

# # Rspec sith lord Arena

# Your job will be to develop a sith lord arena in a test-driven way using Rspec.

# ### sith lord Spec

describe "#Sith" do
  subject(:sith){Sith.new("Darth Plagueis", "lightsaber")} 

    # * A sith lord has a name
    describe "#name" do
    
    it "gives name to Sith" do
      expect(sith.name).to be_kind_of(String)
    end

    end

    # * A sith lord has a weapon
    describe "#weapon" do

      it "lets Sith choose weapon" do
        expect(sith.weapon).to be_kind_of(String)
      end

    end

end

# ### Arena Spec

describe "#Arena" do
  subject(:arena){Arena.new("Petranaki Arena")}
  subject(:bane){Sith.new("Darth Bane", "forcelightning")}
  subject(:maul){Sith.new("Darth Maul", "lightsaber")}
  subject(:zannah){Sith.new("Darth Zannah", "forcepush")}

# * An arena has a name
  describe "#name" do

    it "Names the arena" do
      expect(arena.name).to be_kind_of(String)
    end

    # * The arena name should be capitalized
    it "Capitalizes the name" do
      expect(arena.name).to eq(arena.name.capitalize)
    end
  end

  describe "#add_sith_lord" do

    # * An arena can has sith lords
    before "can has sith lords" do
      expect( arena.siths_on_deck.count).to eq(0)
    end

    # * You can add a sith lord to the arena
    it "Adds sith lord to arena" do
      expect( arena.add_sith_lord(maul)).to include(maul)
    end

  end

  # binding.pry

  describe "#sith_fight" do
  #   * The arena should never have more than 2 sith lords in it at a time
    it "limits fight to only two siths at a time" do
      expect( arena.siths_on_deck.length <= 2).to be_true
    end

    it "compares the two weapons" do
      
    end

    it "determines which sith will win" do
      expect( arena.sith_fight(maul, zannah)).to match("Darth Maul is victorious! The Dark Side reigns supreme!")
    end

    it "removes losing sith from arena" do

    end


  end

  


# * If there are two sith lords in the arena, you can call a fight method that will kill one of the sith lords and remove them from the arena.
#   * Winning conditions:
#     * Lightsaber beats Force Push
#     * Force Push beats Force Lightning
#     * Force Lightning beats Lightsaber
#     * If the two sith lords have the same weapon, they both die.

end



# ### Bonus

# * Add a method to remove sith lords from the arena by name

# * Update your winning conditions so that if the sith lord named "Maximus" is in the fight, he should always win.

# * Add a method to check to see if the crowd is entertained (.entertained?). The crowd is only entertained if Maximus is in the arena.

# * When a fight is over, before the sith lord is killed and removed, the user should be prompted to put their thumbs up or down. If they vote down, remove the losing sith lord from the arena. If they vote up, the sith lord stays alive in the arena.

