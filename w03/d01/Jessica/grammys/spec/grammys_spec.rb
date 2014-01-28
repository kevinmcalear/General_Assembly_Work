require_relative "../lib/grammys.rb"
require "spec_helper"

describe Grammy do
  let(:grammy){Grammy.new(2003, "animation", "Shrek")}

  describe "#year" do
    it "returns the year of the Grammy" do
      expect(grammy.year).to eq(2003)
    end
  end

    describe "#category" do
    it "returns the category of the Grammy" do
      expect(grammy.category).to eq("animation")
    end
  end

    describe "#winner" do
    it "returns the winner of the Grammy" do
      expect(grammy.winner).to eq("Shrek")
    end
  end

  describe "to_s" do
    it "returns a string with all the Grammy information" do
      expect(grammy.to_s).to eq("The winner for the animation category was Shrek in 2003.")
    end
  end

  describe "::all" do
    g1 = Grammy.new(2001, "action", "Men in Black")
    g2 = Grammy.new(1997, "children", "Matilda")
    grammys = Grammy.all

    it "puts all the grammys in an array" do
      expect(grammys).to include(g1)
      expect(grammys).to include(g2)
    end
  end
  
  describe "::delete_at" do
    before do
    Grammy.clear
    @g3 = Grammy.new(2001, "action", "Women in Black")
    @g4 = Grammy.new(1996, "children", "Matilda")
    Grammy.delete_at(0)
  end
    
    it "deletes an instance of a Grammy" do
      expect(Grammy.all).to include(@g4)
      expect(Grammy.all).not_to include(@g3)
      end
    end

  describe "::save_all" do
    before do
      Grammy.clear
      g5 = Grammy.new(2013, "action", "American Hustle")
      g6 = Grammy.new(2013, "scifi", "Her")
    end
     
     it "creates a CSV file if none exists" do
        if File.exists? "grammys_test.csv"
        File.delete("grammys_test.csv")
        end
        Grammy.save_all("grammys_test.csv")

        expect(File.exists? "grammys_test.csv").to be_true
    end
  end

  describe"::clear" do
    before do
    Grammy.new(2004, "action", "Hawaii Adventures")
    Grammy.clear
  end
     it "clears all instances of Grammys" do
    expect(Grammy.all.count).to eq(0)
  end
end


  describe "::read_all" do
    before do
      Grammy.clear

      @g9 = Grammy.new(2003,"shmee","shmee")
      @g10 = Grammy.new(2004,"shmee","shm2ee")

      Grammy.save_all("receipts_test.csv")
      Grammy.clear
    end

    it "reads all grammys from our grammy CSV" do
      Grammy.read_all("receipts_test.csv")
      expect(Grammy.all.count).to eq(2)
    end
  end

end