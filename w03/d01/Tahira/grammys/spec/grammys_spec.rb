require 'spec_helper.rb'
require_relative '../lib/grammys.rb'

describe Grammy do 

  let(:grammy) {Grammy.new(2014, "Best Album", "Daft Punk")}
  let(:grammy2) {Grammy.new(2014, "Best New Artist", "Macklemore")}

  describe "an instance" do
    it "has a year, category, and winner" do
      expect(grammy.year).to eq(2014)
      expect(grammy.category).to eq("Best Album")
      expect(grammy.winner).to eq("Daft Punk")
    end
  end

  describe ":all" do
    it "stores all grammy winners" do
      Grammy.new(2014, "Best Album", "Daft Punk")
      Grammy.new(2014, "Best New Artist", "Macklemore")
      expect(Grammy.all.count).to eq(2)
    end
  end

  describe ":clear" do
    it "can clear grammys from temp store" do
      Grammy.new(2014, "Best Album", "Daft Punk")
      Grammy.new(2014, "Best New Artist", "Macklemore")
      Grammy.clear
      expect(Grammy.all.count).to eq(0)
    end
  end

   describe "::read_all" do
    before do
      Grammy.clear
      g1 = Grammy.new(2014, "Best Album", "Daft Punk")
      g2 = Grammy.new(2014, "Best New Artist", "Macklemore")

      Grammy.save_all("grammys_test.csv")
      Grammy.clear
    end

    it "reads all awards from our Grammy CSV" do
      Grammy.read_all("grammys_test.csv")
      expect(Grammy.all.count).to eq 2
    end
  end

  describe "::save_all" do
    before do
      Grammy.clear
      g1 = Grammy.new(2014, "Best Album", "Daft Punk")
      g2 = Grammy.new(2014, "Best New Artist", "Macklemore")
    end

    it "creats a CSV file if none exists" do
      if File.exists? "grammys_test.csv"
        File.delete("grammys_test.csv")
      end
      Grammy.save_all("grammys_test.csv")
      expect(File.exists? "grammys_test.csv").to be_true
    end


    it "saves the receipts in the CSV file" do
      Grammy.save_all("grammys_test.csv")
      f = File.open("grammys_test.csv", "r")
      contents = f.read
      f.close

      contents_array = contents.split("\n")
      first_line = contents_array[0]
      expect(first_line).to eq "2014|Best Album|Daft Punk"
    end
  end
end