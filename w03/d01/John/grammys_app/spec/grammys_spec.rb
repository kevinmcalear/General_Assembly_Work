require 'spec_helper'
require_relative '../lib/grammys'

describe Grammy do
   
  describe "a single grammy" do
    let(:grammy) { Grammy.new(2012, "Rap Performance", "West")}  
    it "should have a year" do
      expect(grammy.year).to eq(2012)
    end

    it "should have a category" do
      expect(grammy.category).to eq("Rap Performance")
    end

    it "should have a winner" do
      expect(grammy.winner).to eq("West")
    end
  end

  describe "#to_s" do
    let(:grammy) { Grammy.new(2012, "Rap Performance", "West")}
    it "returns the Grammy formatted as string" do
      expect( grammy.to_s ).to eq("2012 Rap Performance went to West")
    end
  end

  describe "::all" do
    # before do
    #   grammy1 = Grammy.new(2012, "Rap", "West")
    #   grammy2 = Grammy.new(1983, "Pop", "Jackson")
    # end

    # let(:grammy1) {Grammy.new(2012, "Rap", "West")}
    # let(:grammy2) {Grammy.new(2012, "Pop", "MJ")}  

    # subject(:grammy1) {Grammy.new(2012, "Rap", "West")}
    # subject(:grammy2) {Grammy.new(1983, "Pop", "MJ")}  

    grammy1 = Grammy.new(2012, "Rap", "West")
    grammy2 = Grammy.new(1983, "Pop", "Jackson")

    grammys = Grammy.all
    it "should list all the grammys" do
      expect(grammys).to include(grammy1)
      expect(grammys).to include(grammy2)

    end
  end

  describe "::clear" do
    Grammy.clear
    # before {Grammy.new(2000, "Pop", "MJ")}
    it "deletes all the grammys from the list" do
      Grammy.clear
      Grammy.new(2000, "Pop", "MJ")
      expect(Grammy.all.count).to eq(1)
      Grammy.clear
      expect(Grammy.all.count).to eq(0)
    end
  end

  describe "::delete" do
    Grammy.clear
    g1 = Grammy.new(2012, "Rap Performance", "West")
    # Grammy.new(1983, "Pop", "Jackson")

    it "should delete a Grammy" do
      Grammy.delete(0)
      # expect(Grammy.all.count).to eq(1)
      expect(Grammy.all).not_to include(g1)
    end
  end

  describe "::save" do
    before do
      Grammy.clear
      Grammy.new(2012, "Rap Performance", "West")
      Grammy.new(1983, "Pop", "Jackson")
    end

    it "should create a new CSV file" do

      if File.exists? "grammy_list_test.csv"
          File.delete("grammy_list_test.csv")
      end
      
      Grammy.save("grammy_list_test.csv")
      expect( File.exists? "grammy_list_test.csv" ).to be_true
    end

    it "saves the grammys to a CSV file" do
      Grammy.save("grammy_list_test.csv")
      f = File.open("grammy_list_test.csv", "r")
      data = f.read
      f.close

      expect(data.split("\n")[0]).to eq("2012|Rap Performance|West")
    end
  end

  describe "::read" do
    before do
      Grammy.clear
      Grammy.new(2012, "Rap Performance", "West")
      Grammy.new(1983, "Pop", "Jackson")
      if File.exists? "grammy_list_test.csv"
          File.delete("grammy_list_test.csv")
      end
    end

    it "should read the two grammys from our file" do
      Grammy.save("grammy_list_test.csv")
      Grammy.clear
      Grammy.read("grammy_list_test.csv")

      expect(Grammy.all.count).to eq(2)
    end
  end
end