require_relative '../lib/grammys.rb'
require 'rspec'

describe Grammys do
  subject(:grammy) {Grammys.new(2014, "Song of the year", "Lorde")}

  describe "::new" do
    it "creates a new instance with a year category and winner" do
      expect{grammy.year}.not_to raise_error
      expect{grammy.category}.not_to raise_error
      expect{grammy.winner}.not_to raise_error
    end
  end

  describe "::add_a_grammy" do
    it "adds a grammy to a class variable" do
      gram = Grammys.new(1959, "Henry Mancini", "Album of the Year")
      Grammys.clear
      Grammys.add(gram)
      expect(Grammys.all).to include(gram)
    end
  end

  describe "::list_all" do
    it "lists all the grammys in @@grammys" do
      gram = Grammys.new(1959, "Henry Mancini", "Album of the Year")
      Grammys.clear
      Grammys.add(gram)
      expect(Grammys.list_all).to include(gram)
    end
  end

  describe "::delete" do
    it "deletes a particular grammy" do
      gram = Grammys.new(1959, "Henry Mancini", "Album of the Year")
      Grammys.clear
      Grammys.add(gram)
      Grammys.delete(0)
      expect(Grammys.all).not_to include(gram)
    end
  end

  describe "::save_all" do
    it "saves @@grammys to file in storage" do
      gram = Grammys.new(1959, "Henry Mancini", "Album of the Year")
      Grammys.clear

      Grammys.save_all("grammys.csv")
      f = File.open("grammys.csv", "r")
      str = f.readlines[0]
      expect(str[0..5]).to eq("1959\tA")
      f.close
    end
  end

  describe "::load_all" do
    it "loads from the file_path" do
      Grammys.clear
      Grammys
      man = Grammys.new(1959, "Henry Mancini", "Album of the Year")
      lourde = Grammys.new(2014, "Song of the year", "Lorde")
      Grammys.save_all("grammys.csv")
      Grammys.clear
      Grammys.load_all("grammys.csv")
      expect(Grammys.grammys[0].year).to eq(man.year)
    end
  end
end