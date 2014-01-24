require_relative '../lib/gladiator.rb'

  describe "Gladiator:" do
    let(:gladiator){Gladiator.new("Brad", "spear")}
    let(:gladiator1){Gladiator.new("Peter", "club")}
    let(:gladiator2){Gladiator.new("Greg", "trident")}

  describe "#name" do
      it "name is a String" do
        expect(gladiator.name).to be_kind_of(String)
      end

      it "adds new name to Gladiator" do
        expect(gladiator.name).to be_true
      end
    end

    describe "#weapon" do
      it "weapon is a String" do
        expect(gladiator.weapon).to be_kind_of(String)
      end

       it "has weapon" do
        expect(gladiator.weapon).to eq("spear")
    end
  end

  describe "Arena:" do
    let(:arena){Arena.new("colesseum")}

    it "#name should be capitalize" do
        expect(arena.name("colesseum")).to eq("Colesseum")
    end

  context "adding gladiators to arena" do
    before {arena.add_gladiator(gladiator)}
    before {arena.add_gladiator(gladiator1)}

    it "has gladiators" do
      expect(arena.gladiators).to be_kind_of(Array)
      expect(arena.gladiators).not_to raise_error
    end

    it "only holds 2 gladiators" do
      expect(arena.gladiators.count).to be == 2
      expect(arena.add_gladiator(gladiator2)).to eq("Too many players!")
    end

    describe "#fight" do
    it "Fight in Arena" do
      expect(arena.fight).not_to raise_error
    end



  context "Which player wins" do
    it "Trident beats Spear" do
      expect(arena.fight).to eq("#{gladiator2.name} defeats #{gladiator.name}!")
    end
     it "Club beats Trident" do
      expect(arena.fight).to eq("#{gladiator1.name} defeats #{gladiator2.name}!")
    end
     it "Spear beats Club" do
      expect(arena.fight).to eq("#{gladiator.name} defeats #{gladiator1.name}!")
    end
  end
 end
end



   it "Not enough people to fight!" do
      expect(arena.fight).to eq("Not enough people to fight!")
      end
end
end


