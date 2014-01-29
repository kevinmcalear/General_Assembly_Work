require "spec_helper.rb"
require_relative "../lib/grammy.rb"

describe "Grammy" do
  let (:grammy) {Grammy.new(1999,"Best Album","Bon Jovi")}
  let (:grammy2) {Grammy.new(2000,"Best Track","asadsd")}
  
  describe "a Grammy instance" do
    it "has a year" do
      expect(grammy.year).to eq 1999
    end
    it "has a category" do
      expect(grammy.category).to eq "Best Album"
    end
    it "has a winner" do
      expect(grammy.winner).to eq "Bon Jovi"
    end
  end

  describe "#to_s" do
    it "creates a string for a grammy" do
      expect(grammy.to_s).to eq "1999|Best Album|Bon Jovi"
    end
  end

  describe "::save" do
    before do
      Grammy.clear
      grammy = Grammy.new(1999,"Best Album","Bon Jovi")
      grammy2 = Grammy.new(2000,"Best Track","asadsd")
    end

    it "creates a new file when it doesn't exist" do
      if File.exist? "grammy_list.csv"
        File.delete("grammy_list.csv")
      end
      Grammy.save("grammy_list.csv")
      expect(File.exist? "grammy_list.csv").to be_true

    end

    it "saves the grammys to file" do
        Grammy.save("grammy_list.csv")
        f = File.open("grammy_list.csv","r")
        all_contents = f.read
        f.close
        contents_array = all_contents.split("\n")
        first_line = contents_array[0]
      expect(first_line).to match ("1999|Best Album|Bon Jovi")
    end
  end

end