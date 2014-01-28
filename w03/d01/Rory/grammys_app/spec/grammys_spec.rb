require_relative "../lib/grammys.rb"
require "spec_helper"

describe Grammys do
  let(:lorde){ Grammys.new(2014,"Song of the Year","Lorde, Royals") }

  describe "an instance" do
    it "has a year" do
      expect(lorde.year).to eq(2014)
    end
    it "has a category" do
      expect(lorde.category).to eq("Song of the Year")
    end
    it "has a winner" do
      expect(lorde.winner).to eq("Lorde, Royals")
    end
  end

  describe "#to_s" do
    it "returns a string with all the info about that Grammy" do
      expect(lorde.to_s).to eq("Grammy-- Year: 2014, Category: Song of the Year, Winner: Lorde, Royals")
    end
  end

  describe "::all" do
    it "returns all of the instances" do
      Grammys.clear

      daftpunk = Grammys.new(2014, "Record of the Year", "Daft Punk, Get Lucky")
      bestnewartist = Grammys.new(2014, "Best New Artist", "Macklemore & Ryan Lewis")
      all_grammys = Grammys.all
      expect(all_grammys).to include(daftpunk)
      expect(all_grammys).to include(bestnewartist)
      expect(all_grammys.count).to eq(2)
    end
  end

  describe "::save_all" do
    before do
      Grammys.clear
      daftpunk = Grammys.new(2014, "Record of the Year", "Daft Punk, Get Lucky")
      bestnewartist = Grammys.new(2014, "Best New Artist", "Macklemore & Ryan Lewis")
      all_grammys = Grammys.all
    end
    it "creates a CSV file if none exists" do
      if File.exists? "grammys_test.csv"
        File.delete("grammys_test.csv")
      end
      Grammys.save_all("grammys_test.csv")
      expect(File.exists? "grammys_test.csv").to be_true
    end

    it "saves the grammy info in the csv file" do
      Grammys.save_all("grammys_test.csv")
      f = File.open("grammys_test.csv", "r")
      contents = f.read
      f.close

      contents_array = contents.split("\n")
      first_line = contents_array[0]

      expect(first_line).to eq "2014|Record of the Year|Daft Punk, Get Lucky"
    end

  end

  describe "::read_all" do
    before do 
      Grammys.clear
      daftpunk = Grammys.new(2014, "Record of the Year", "Daft Punk, Get Lucky")
      bestnewartist = Grammys.new(2014, "Best New Artist", "Macklemore & Ryan Lewis")
      Grammys.save_all("grammys_test.csv")
      Grammys.clear
    end

    it "reads all grammy info from our grammys csv" do
      Grammys.read_all("grammys_test.csv")
      expect(Grammys.all.count).to eq(2)
    end
  end

end