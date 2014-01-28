require_relative "../lib/grammy.rb"
require "spec_helper"

describe Grammys do
  let(:grammy){Grammys.new(2014, "Song Of The Year", "Royals" )}
  
  describe "an instance" do
    it "has a year" do
      expect(grammy.year).to eq(2014)
    end
  end

  describe "an instance" do
    it "has a category" do
      expect(grammy.category).to eq("Song Of The Year")
    end
  end

  describe "an instance" do
    it "has a winner" do
      expect(grammy.winner).to eq("Royals")
    end
  end

  describe "#to_s" do
    it "returns a string with the data" do
      expect(grammy.to_s).to eq("The 2014 winner of Song Of The Year was Royals")
    end
  end

  describe "::clear" do 
    it "removes all instances from the internal list of Grammys" do
      Grammys.new(1990, "Best Song", "Bruce")
      Grammys.clear
      expect(Grammys.all.count).to eq 0
    end    
  end

  describe "::all" do

    it "returns all of the instances" do
    Grammys.clear

    g1 = Grammys.new(1990, "Best Song", "Bruce")
    g2 = Grammys.new(2000, "Best Song", "It's tricky")

    gram = Grammys.all
    expect(gram).to include(g1)
    expect(gram).to include(g2)
    expect(gram.count).to eq(2)
    end
  end

  describe "#delete_grammy" do
    it "deletes a grammy instance" do
      g1 = Grammys.new(1990, "Best Song", "Bruce")
      expect(grammy.delete_grammy[0]).not_to include(g1)
    end
  end

  describe "::read_all" do
    before do
      @g1 = Grammys.new(1990, "Best Song", "Bruce")
      @g2 = Grammys.new(2000, "JT", "Cry")

      Grammys.save_all("grammys_test.csv")
      Grammys.clear
    end

    it "reads all grammy winners to CSV" do
      Grammys.read_all("grammys_test.csv")
      expect(Grammys.all.count). eq(2)
    end
  end

 describe "::save_all" do
    before do
      @g1 = Grammys.new(1990, "Best Song", "Bruce")
      @g2 = Grammys.new(2000, "JT", "Cry")
    end

    it "creates a CSV if none exists" do
      if File.exists? "grammys_test.csv"
        File.delete("grammys_test.csv")
      end
      Grammys.save_all("grammys_test.csv")

      expect(File.exists? "grammys_test.csv").to be_true
    end

    it "saves the grammys to a CSV file" do
      Grammys.save_all("grammys_test.csv")
      f = File.open("grammys_test.csv", "r")
      contents = f.read
      f.close

      contents_array = contents.split("\|")
      first_line = contents_array[0]

      expect(first_line).to eq "1990 | Best Song | Bruce"
    end
  end


end