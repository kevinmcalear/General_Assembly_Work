require "spec_helper"
require_relative "../lib/grammy.rb"

describe Grammy do
  let(:grammy){Grammy.new("2014", "Album of the Year", "Daft Punk")}
  let(:grammy2){Grammy.new("2012", "Blah", "Blahblah")}
  describe "an instance" do

    it "has a year" do

      expect(grammy.year).to eq("2014")

    end

    it "has a category" do

      expect(grammy.category).to eq("Album of the Year")

    end

    it "has a winner" do

      expect(grammy.winner).to eq("Daft Punk")

    end

  end

  describe "#to_s" do

    it "displays the result of a specific award" do

      expect(grammy.to_s).to eq("The #{grammy.year} award for #{grammy.category} was won by #{grammy.winner}")

    end

  end

  describe "::all" do

    it "returns a list of all the grammy winners in the database." do
      Grammy.clear
      grammy
      expect(Grammy.all).to include grammy
    end
    
  end

  describe "::clear" do

    it "clears the contents of the local storage" do

      Grammy.clear
      expect(Grammy.all.count).to eq(0)
    end
  end
  describe "::save" do
    it "creates a CSV file" do

      if File.exists?("grammy_test.csv")
        File.delete("grammy_test.csv")
      end

      Grammy.save("grammy_test.csv")
      expect(File.exists? "grammy_test.csv").to be_true
    end

    it "saves the winners to a csv file" do
      grammy
      Grammy.save("grammy_test.csv")
      Grammy.clear

      f = File.open("grammy_test.csv")
      contents = f.read
      f.close

      contents_array = contents.split("\n")
      first_line = contents_array[0]

      expect(first_line).to eq("2014|Album of the Year|Daft Punk")


    end

  end

  describe "::load" do
    it "pulls information out of a csv file" do
      Grammy.load("grammy_test.csv")
      expect(Grammy.all.count).to eq(1)
    end
  end

  describe "::delete" do
    it "deletes a file at a specific position" do
      Grammy.clear
      grammy
      grammy2
      Grammy.delete_at(0)
      expect(Grammy.all.count).to eq(1)
      Grammy.save("grammy_test.csv")
    end

  end



end



