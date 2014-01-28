require 'spec_helper'
require_relative '../lib/grammys.rb'

describe "Grammy" do
  let(:song_of_the_year){Grammy.new(2014,"Song of the Year","Lorde")}


  it "has a year"do 
    expect(song_of_the_year.year).to eq(2014)
  end

  it "has a category" do
    expect(song_of_the_year.category).to eq("Song of the Year")
  end

  it "has a winner" do
    expect(song_of_the_year.winner).to eq("Lorde")
  end

  describe"::all" do
    Grammy.clear
    s1 = Grammy.new(2014,"Song of the Year","Lorde")
    s2 = Grammy.new(2014,"Record of the Year","Daft Punk")
  grammys = Grammy.all 
  it "can list all Grammys" do
    expect(grammys).to include(s1)
    end
  end

  describe"::clear" do
    it "clears the list of grammys" do
      Grammy.clear
      expect(Grammy.all.count).to eq(0)
    end
  end

  describe "::save_all" do
    before do
      Grammy.clear
      @s1 = Grammy.new(2014,"Song of the Year","Lorde")
      @s2 = Grammy.new(2014,"Record of the Year","Daft Punk")
    end

  it "creates a csv" do
    if File.exists?("grammy_test.csv")
      File.delete("grammy_test.csv")
    end
    Grammy.save_all("grammy_test.csv")

    expect(File.exists? "grammy_test.csv").to be_true
  end

    it "saves to a csv" do
    Grammy.save_all("grammy_test.csv")

    f = File.open("grammy_test.csv", "r")
    contents = f.read
    f.close

    contents_array = contents.split("\n")
    first_line = contents_array[0]

    expect(first_line).to eq "2014|Song of the Year|Lorde"
    end


  describe"::delete_entry" do
    before do
      Grammy.clear
      @s1 = Grammy.new(2014,"Song of the Year","Lorde")
      @s2 = Grammy.new(2014,"Record of the Year","Daft Punk")
      Grammy.save_all("grammy_test.csv")
    end

  it "can delete a Grammy" do
    Grammy.delete_entry("grammy_test.csv",0)
    Grammy.save_all("grammy_test.csv")

    f = File.open("grammy_test.csv", "r")
    contents = f.read
    f.close

    contents_array = contents.split("\n")
    first_line = contents_array[0]

    expect(first_line).to eq "2014|Record of the Year|Daft Punk"
    end
  end

  end
end
