require "pry"
require "spec_helper"
require_relative "../lib/gladiator"

#####################
#### Gladiator Spec ####
#####################

describe Gladiator do
  let(:gladiator) {Gladiator.new("Sub-Zero")} 

  describe "#name" do
    it "has a name" do
      expect( gladiator.name ).to be_kind_of(String)
    end
  end

  describe "#weapon" do
    it "has a weapon on his person" do
      expect( gladiator.weapon[0] ).to be_kind_of(String)
    end
  end
end

#####################
#### Stadium Spec #####
#####################

describe Stadium do
  let(:stadium) {Stadium.new("Shea")}

  describe "#name" do
    it "has a name" do
      expect( stadium.name ).to be_kind_of(String)
    end
  end

  describe "#name" do
    it "should be capitalized" do
      expect( stadium.name[0] == stadium.name[0].capitalize).to be_true
      expect( stadium.name[0] == stadium.name[0].downcase).to be_false
    end
  end

  let(:gladiator1) {Gladiator.new("Sub-Zero")}
  let(:gladiator2) {Gladiator.new("Scorpion")}
  let(:gladiator3) {Gladiator.new("Goro")}

  describe "#and_then_there_was" do
    it "should be able to add a gladiator to the arena" do
      binding.pry
      expect( stadium.mortal_kombat == [] ).to be_true
      expect( stadium.and_then_there_was(gladiator1) ).not_to raise_error
      expect( stadium.mortal_kombat == [gladiator1] ).to be_true
    end

    it "should not allow more than two gladiators in the stadium" do
      expect( stadium.and_then_there_was(gladiator1) ).not_to raise_error
      expect( stadium.and_then_there_was(gladiator2) ).not_to raise_error
      expect( stadium.mortal_kombat.size <= 2 ).to be_true
      expect( stadium.mortal_kombat.size >= 3).to be_false
    end
  end

  # describe "#fight" do
  #   binding.pry
  #   it "appears as soon as another living creature comes on the scene" do
  #     expect( stadium.mortal_kombat.size > 1)
  #   it "should FINISH HIM" do
  #     expect( stadium.mortal_kombat.size == 2 ).to be_true
  #     expect( stadium.fight() ).not_to raise_error
  #     expect( stadium.mortal_kombat == [gladiator1] ).to be_true
  #   end
  # end

end