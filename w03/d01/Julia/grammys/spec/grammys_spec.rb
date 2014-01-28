require 'spec_helper'
require_relative "../lib/grammys"

#Grammy has:
#year
#category
#winner

describe Grammy do

  describe "an instance of Grammy"
  let(:grammy) {Grammy.new(1992, "new artist", "Marc Cohn")}
  let(:sheryl) {Grammy.new(1995, "new artist", "Sheryl Crow")}
  let(:lauryn) {Grammy.new(1999, "new artist", "Lauryn Hill")}


  it "has a year" do
    expect(grammy.year).to eq(1992)
  end

  it "has a category" do
    expect(grammy.category).to eq("new artist")
  end

  it "has a name" do
    expect(grammy.name).to eq("Marc Cohn")
  end

  # describe "#add" do
  #   it "will add a grammy to the array of all grammys" do
  #   grammy.add(sheryl)
  #   expect(grammy.grammys.size).to be >=(1)
  #   end
  # end

  describe "#to_s" do
    let(:sheryl) {Grammy.new(1995, "new artist", "Sheryl Crow")}
    it "will display an instance of a grammy as a string" do
    expect(sheryl.to_s).to eq("1995, new artist, Sheryl Crow")
    end
  end

  describe "::clear" do
    it "wipe the array 'grammys' clean" do
      Grammy.new(1992, "new artist", "Marc Cohn")
      Grammy.clear
      expect(Grammy.list_all.count).to eq(0)
    end
  end

  describe "::list_all" do
    it "will list all the grammys" do
      Grammy.clear
      grammy_1 = Grammy.new(1992, "new artist", "Marc Cohn")
      grammy_2 = Grammy.new(1995, "new artist", "Sheryl Crow")
      grammy_3 = Grammy.new(1999, "new artist", "Lauryn Hill")
      
     
      expect(Grammy.list_all).to include(grammy_1)
      expect(Grammy.list_all).to include(grammy_2)
      expect(Grammy.list_all).to include(grammy_3)
    end
  end


describe "::read_all" do
    before do
      Grammy.clear

      grammy_1 = Grammy.new(1992, "new artist", "Marc Cohn")
      grammy_2 = Grammy.new(1995, "new artist", "Sheryl Crow")

      Grammy.read_all("grammys_test.csv")
      Grammy.clear
    end

    it "reads all the grammy's from our CSV" do
      Grammy.read_all("grammys_test.csv")
      expect(Grammy.list_all.count).to eq(2)
    end
  end
 
 describe "::save_all" do
    before do
      Grammy.clear

      grammy_1 = Grammy.new(1992, "new artist", "Marc Cohn")
      grammy_2 = Grammy.new(1995, "new artist", "Sheryl Crow")
    end

    it "creates a CSV file if none exists" do
      if File.exists? "grammys_test.csv"
        File.delete("grammys_test.csv")
      end
      Grammy.save_all("grammys_test.csv")

      expect(File.exists? "grammys_test.csv").to be_true
    end

    it "saves the grammys in the CSV file" do
      Grammy.save_all("grammys_test.csv")

      # then open the file and read it in to memory
      f = File.open("grammys_test.csv","r")
      contents = f.read
      f.close

      # then take the first line
      contents_array = contents.split("\n")
      first_line = contents_array[0]

      expect(first_line).to eq "1992\|new artist\|Marc Cohn"
    end
  end
  
end   