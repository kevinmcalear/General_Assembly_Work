require_relative "../lib/grammys.rb"
require "spec_helper"

describe Grammy do
let(:grammy) {Grammy.new("2003", "Best Male Vocal", "Coldplay")}
  describe "an instance" do
    it "has a year" do
      expect(grammy.year).to eq("2003")
    end
    it "has a category" do
      expect(grammy.category).to eq("Best Male Vocal")
    end
    it "has a winner" do
      expect(grammy.winner).to eq("Coldplay")
    end
  end

    describe "#to_s" do
    it "returns a string of grammys" do
      expect(grammy.to_s).to eq("Grammy goes to: 2003, Best Male Vocal, Coldplay")
    end
  end

    describe "::clear" do
      it "clears the array if there is data in it" do
        Grammy.new("2003", "Best Male Vocal", "Coldplay") 
          Grammy.clear
        expect(Grammy.all.count).to eq(0)
      end
    end

  describe "::all" do
    it "checks that there is data in an array" do
    Grammy.clear
    g1 = Grammy.new("2003", "Best Male Vocal", "Coldplay")
    g2 = Grammy.new("2009", "Song of the Year", "Jay-Z")
    grammys = Grammy.all
    expect(grammys).to include(g1)
    expect(grammys).to include(g2)
    end
  end

  describe "::read_all" do
      before do
      Grammy.clear
      @g1 = Grammy.new("2003", "Best Male Vocal", "Coldplay")
      @g2 = Grammy.new("2009", "Song of the Year", "Jay-Z")

      Grammy.save_all("grammy_test.csv")
      
    end
    it "reads the list of grammys from the csv file" do
      Grammy.read_all("grammy_test.csv")
      expect(Grammy.all.count).to eq(2)
    end
  end
end