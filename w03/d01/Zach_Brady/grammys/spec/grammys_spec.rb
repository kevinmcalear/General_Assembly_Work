require_relative '../lib/grammys.rb'
require 'spec_helper'
require 'pry'


describe Grammys do
  let(:best_album_2014) {Grammys.new(2014, "Album of the Year", "Random Access Memories, Daft Punk") }

  describe "a Grammy" do

    it "has a year" do
      expect( best_album_2014.year ).to eq(2014)
    end

    it "has a category" do
      expect( best_album_2014.category ).to eq("Album of the Year")
    end

    it "has a winner" do
      expect( best_album_2014.winner ).to eq("Random Access Memories, Daft Punk")
    end

  end

  describe "#to_s" do

    it "prints out a GRAMMY record" do
      expect( best_album_2014.to_s ).to eq("Category: Album of the Year, Year: 2014, Winner: Random Access Memories, Daft Punk")
    end
  end

  describe "::clear" do
    it "remove all instances from the internal list of the class Grammy" do
      Grammys.clear
      expect( Grammys.list_all_grammys.size ).to eq 0
    end
  end

  describe "::list_all_grammys" do

    it "prints out all GRAMMY records presently in the database" do 
      Grammys.clear

      best_album_2014 = Grammys.new(2014, "Album of the Year", "Random Access Memories, Daft Punk")
      best_song_2014 = Grammys.new(2014, "Song of the Year", "Royals, Lorde")

      grammys = Grammys.list_all_grammys

      expect( grammys ).to include(best_album_2014)
      expect( grammys ).to include(best_song_2014)
      expect( grammys.size ).to eq(2)

    end
  end

  describe "::read_all" do
    before do
      Grammys.clear

      @best_album_2014 = Grammys.new(2014, "Album of the Year", "Random Access Memories, Daft Punk")
      @best_song_2014 = Grammys.new(2014, "Song of the Year", "Royals, Lorde")

      Grammys.save_all("grammys_test.csv")
      Grammys.clear
    end

    it "reads GRAMMY records from our csv file" do
      Grammys.read_all("grammys_test.csv")
      expect( Grammys.list_all_grammys.count ).to eq(2)
    end
  end

  describe "::save_all" do
    before do
      Grammys.clear

      @best_album_2014 = Grammys.new(2014, "Album of the Year", "Random Access Memories, Daft Punk")
      @best_song_2014 = Grammys.new(2014, "Song of the Year", "Royals, Lorde")

    end

    it "creates a CSV file if none exists" do

      if File.exists? "grammys_test.csv"
        File.delete("grammys_test.csv")
      end
      Grammys.save_all("grammys_test.csv")

      expect( File.exists? "grammys_test.csv" ).to be_true
    end

    it "saves GRAMMY records to a CSV file" do 

      Grammys.save_all("grammys_test.csv")

      f = File.open("grammys_test.csv")
      contents = f.read
      f.close

      contents_array = contents.split("\n")
      first_line = contents_array[0]

      expect(first_line).to eq("Category: Album of the Year, Year: 2014, Winner: Random Access Memories, Daft Punk")
    end
  end
end