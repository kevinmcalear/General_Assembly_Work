require_relative "../lib/grammy.rb"
require "spec_helper"

describe Grammy do
  let(:grammy_winner){Grammy.new(2004, "Jazz", "Duffy Duck")}
  let(:grammy_winner2){Grammy.new(2000, "Rock", "Uknown")}

  describe "an instance" do
    it "has a year" do
      expect(grammy_winner.year).to eq(2004)
    end
    it "has a category" do
      expect(grammy_winner.category).to eq("Jazz")
    end
    it "has a winner" do
      expect(grammy_winner.winner).to eq("Duffy Duck")
    end
  end

  describe "#to_s" do
    it "prints the instance as a String" do
    expect(grammy_winner.to_s).to eq("Duffy Duck won Grammy in Jazz category in 2004")
    end
  end

  describe "::clear" do
    it "clears all instances from the class before any other actions" do
      Grammy.new(2004, "Jazz", "Duffy Duck")
      Grammy.clear
      expect(Grammy.all_winners.length).to eq(0)
    end
  end

  describe "::all_winners" do
    it "returns all winners" do
      Grammy.clear

      g1 = Grammy.new(2004, "Jazz", "Duffy Duck")
      g2 = Grammy.new(2000, "Rock", "Uknown")
      winners = Grammy.all_winners
      expect(winners).to include g1, g2
      expect(winners.length).to eq(2)
    end
  end

  describe "#list_by_index" do # test that I'm not sure in, although it's passed
    it "instantiates all objects and adds them and lists them" do
      Grammy.clear
      Grammy.new(2004, "Jazz", "Duffy Duck")
      # winners = Grammy.all_winners
      expect(Grammy.list).to eq("0 => Duffy Duck")
    end
  end

  describe "::delete" do
    before "add and object into an array" do
      Grammy.clear
      Grammy.new(2004, "Jazz", "Duffy Duck")
      Grammy.new(2000, "Rock", "Uknown")
    end
    it "deletes it" do
      winners = Grammy.all_winners
      winners.delete_at(0)
      expect(winners.length).to eq(1)
    end
  end

  describe"::read_winners" do
    before do
      Grammy.clear

      @g1 = Grammy.new(2004, "Jazz", "Duffy Duck")
      @g2 = Grammy.new(2000, "Rock", "Uknown")

      Grammy.save_winners("grammy.csv")
      Grammy.clear
  end

    it "reads all winners from csv file" do
      Grammy.read_winners("grammy.csv")
      expect(Grammy.all_winners)
    end
  end

  describe "::save_winners" do
    before do
      Grammy.clear
      @g1 = Grammy.new(2004, "Jazz", "Duffy Duck")
      @g2 = Grammy.new(2000, "Rock", "Uknown")
    end

    it "creates file if it doesn't exists" do
      if File.exists? "grammy.csv"
      File.delete("grammy.csv")
    end
    Grammy.save_winners("grammy.csv")
    expect(File.exists? "grammy.csv").to be_true
  end

  it "saves the winners in the CSV file" do
    Grammy.save_winners("grammy.csv")
    f = File.open("grammy.csv", "r")
    contents = f.read
    f.close

    contents_array = contents.split("\n")
    first_line = contents_array[0]
    
    expect(first_line).to eq "2004 | Jazz | Duffy Duck"
  end
end

end
