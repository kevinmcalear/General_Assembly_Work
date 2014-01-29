require "spec_helper"
require_relative "../lib/grammys"
FILE_PATH = "grammy_results.csv"

describe Grammys do
  subject(:grammy1){Grammys.new(2014, "Best Album", "Random Access Memories")}
  subject(:grammy2){Grammys.new(2014, "Goat's Choice", "Taylor Swift")}


    it "returns year, category & winner" do
      expect(grammy1.year).to eq 2014
      expect(grammy1.category).to eq "Best Album"
      expect(grammy1.winner).to eq "Random Access Memories"
    end

  describe "::print" do

    it "saves an array of grammys results" do
      Grammys.clear
      grammy1
      grammy2
      expect(Grammys.print.count).to eq 2
    end

  end

  describe "::save" do

    it "saves the file so that line one is the first grammys object" do
      File.delete(FILE_PATH)
      Grammys.clear
      grammy1
      grammy2
      Grammys.save(FILE_PATH)

      f = File.new(FILE_PATH)
        contents = f.read
        f.close
      content_array = contents.split ("\n")
      content_array[0]
      expect(File.exists?(FILE_PATH)).to be_true
      expect(content_array[0]).to match("2014 | Best Album | Random Access Memories")
      expect(content_array.count).to eq 2
    end

  end

  describe "::delete_at" do
    
    it "deletes the file at a specific position" do
      Grammys.clear
      grammy1
      grammy2
      Grammys.delete_at(0)
      Grammys.save(FILE_PATH)
      expect(Grammys.print.count).to eq 1
    end
  end


end