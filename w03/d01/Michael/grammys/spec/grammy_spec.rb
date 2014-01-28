require 'pry'
require_relative "../lib/grammy.rb"
require "spec_helper"

describe Grammy do
  let(:grammy) {Grammy.new(2014,"Best Record","Daft Punk")}

  it "has a year" do 
    expect(grammy.year).to eq(2014)
  end 
  it "has a category" do 
    expect(grammy.category).to eq("Best Record")
  end 
  it "has a winner" do 
    expect(grammy.winner).to eq("Daft Punk")
  end 

  describe "::clear" do
    it "clears all the values in memory" do 
    Grammy.new(2014,"Record of the Year","Daft Punk")
    Grammy.clear
    expect(Grammy.all.count).to eq(0)  
    end  
  end 

  describe "::all" do
    it "returns all the values in memory" do 
      Grammy.clear
      A1 = Grammy.new(2014,"Record of the Year","Daft Punk")
      A2 = Grammy.new(2013,"Record of the Year","Gotye")
      expect(Grammy.all.count).to eq(2)
      expect(Grammy.all).to include A1
      expect(Grammy.all).to include A2
    end 
  end 

  describe "::delete_all" do
    it "clears all the values in the CSV file" do 
      Grammy.new(2014,"Record of the Year","Daft Punk")
      Grammy.new(2013,"Record of the Year","Gotye")
      Grammy.save_all("lib/grammys.csv")
      Grammy.delete_all("lib/grammys.csv")
      f = File.open("lib/grammys.csv")
      contents = f.read 
      expect(contents).to eq("")
    end 
  end 

  describe "::save_all" do
    it "saves the values in memory to the CSV" do
      Grammy.delete_all("lib/grammys.csv")
      Grammy.clear
      Grammy.new(2014,"Record of the Year","Daft Punk")
      Grammy.new(2013,"Record of the Year","Gotye")
      Grammy.save_all("lib/grammys.csv")
      
      f = File.open("lib/grammys.csv")
      contents = f.read 
      contents_array = contents.split("\n")
      first_line = contents_array[0]

      expect(contents_array.length).to eq(2)
      expect( first_line ).to eq("2014|Record of the Year|Daft Punk") 
    end 
  end 
 

  describe "::view_all" do
    it "displays all the Grammys in the CSV file" do
      Grammy.clear
      Grammy.delete_all("lib/grammys.csv")
      Grammy.new(2014,"Record of the Year","Daft Punk")
      Grammy.new(2013,"Record of the Year","Gotye")
      Grammy.save_all("lib/grammys.csv")

      # expect( Grammy.view_all("lib/grammys.csv") ).to eq(["2014|Record of the Year|Daft Punk", "2013|Record of the Year|Gotye"])
      expect( Grammy.view_all("lib/grammys.csv") ).to eq("0 2014|Record of the Year|Daft Punk
1 2013|Record of the Year|Gotye")
      
      
      binding.pry

    end 

  end 
end 
