require_relative '../lib/arena'
require_relative '../lib/gladiator'

describe Arena do
  subject(:arena) { Arena.new("Coliseum")}

  describe "#name" do
    it "gets name" do
      expect(arena.name).to eq("Coliseum")
    end

    context "uncapped arena" do

      before do
        @arena2 = Arena.new("coliseum")
      end
      it "should capitalize" do
        expect(@arena2.name[0]).to start_with("C")
      end
    end
  end 

  describe "#add_gladiator" do
    it "should add a gladiator" do
     expect(arena.add_gladiator(Gladiator.new("Steve", :trident))).not_to raise_error
    end
  end 
  
  describe "#gladiators" do
    it "should be an array" do
      expect(arena.gladiators).to be_kind_of(Array)
    end

    before do
     arena.add_gladiator(Gladiator.new("Steve", :trident))
    end

    it "should add a gladiator to array" do
      expect(arena.gladiators).not_to be_empty
    end

  end 

  describe "#fight" do
    
    context "1 gladiator" do

      before do
        arena.add_gladiator(Gladiator.new("Steve", :trident))
      end

      it "should not allow a fight with 1 gladiator" do
        expect(arena.fight).to eq("error")
      end

    end

    context "two gladiators with different weapons" do
      before do
        arena.add_gladiator(Gladiator.new("Ste", :trident))
        arena.add_gladiator(Gladiator.new("Greg", :club))
      end

      it "should allow a fight with 2 gladiators" do
        expect(arena.fight).not_to eq("error")
      end

      it "should kill at least one gladiator" do
        arena.fight
        expect(arena.gladiators.length).to eq(1)
      end
    end

    context "two gladiators with the same weapons" do
      before do
        arena.add_gladiator(Gladiator.new("Ste", :trident))
        arena.add_gladiator(Gladiator.new("Greg", :trident))
      end

      it "should kill both" do
        arena.fight
        expect(arena.gladiators.length).to eq(0)
      end
    end

  end 




end
