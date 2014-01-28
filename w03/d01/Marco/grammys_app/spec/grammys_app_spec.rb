require 'spec_helper'
require_relative '../lib/grammys_app'

describe Grammys do
  let(:grammy){Grammys.new(1965, "Best New Artist", "The Beatles")}

  describe "an instance" do

    it "has a year" do
      expect( grammy.year).to eq(1965)
    end

    it "has a category" do
      expect( grammy.category).to match("Best New Artist")
    end

    it "has a winner" do
      expect( grammy.winner).to match("The Beatles")
    end
  end

  describe "to_s" do
    it "returns the newly entered data to user" do
      expect( grammy.to_s).to match("Year: #{grammy.year}, Category: #{grammy.category}, Winner: #{grammy.winner}")
    end

  end

  describe "::list" do
    it "lists Grammys that have been added to the list" do
      Grammys.clear
      g1 = Grammys.new(1984, "Record of the Year", "Michael Jackson")
      expect( Grammys.list).to include(g1)
    end

    describe "::clear" do
      it "clears all data from array" do
        g2 = Grammys.new(2013, "Award for Album of the Year", "Daft Punk")
        
        Grammys.clear
        expect( Grammys.list.count).to eq(0)
      end
    end

    describe "returns all of the instances" do
      Grammys.clear 
      
      it "checks to see if instance variables are included" do
      # grammys_list = Grammys.list
      @g4 = Grammys.new(2010, "Album of the Year", "Taylor Swift")
      @g3 = Grammys.new(1994, "Record of the Year", "Whitney Houston")
      
      expect( Grammys.list).to include(@g4)
      expect( Grammys.list).to include(@g3)
      end

    end

  end

  describe "::remove" do
    Grammys.clear
    g2 = Grammys.new(1999, "Song of the Year", "Celine Dion")
    
    it "sets up function" do
      expect( Grammys.list << g2)
    end
    it "finds the index of a particular Grammy entry" do
      Grammys.clear
      g4 = Grammys.new(2010, "Album of the Year", "Taylor Swift")
      expect( Grammys.list.index(g4)).to eq(0)
    end

    it "deletes a particular Grammy entry" do
      g3 = Grammys.new(1994, "Record of the Year", "Whitney Houston")
      expect( Grammys.list.delete(@g3)).to be_nil
    end
  end

  describe "::save_to_file" do
    before do
      Grammys.clear

      g4 = Grammys.new(2010, "Album of the Year", "Taylor Swift")
      g3 = Grammys.new(1994, "Record of the Year", "Whitney Houston")
    end

    it "creates a CSV file if it doesn't exist" do
      if File.exists? "grammys_test.csv"
        File.delete("grammys_test.csv")
      end

      Grammys.save_to_file("grammys_test.csv")

      expect(File.exists? "grammys_test.csv").to be_true
    end

  end

end