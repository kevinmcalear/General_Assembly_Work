require "spec_helper"
require_relative "../lib/grammys"

describe "Grammy" do 
  let(:macklemore) {Grammy.new(2014, "Best Rap Album,", "Macklemore and Ryan Lewis")}

  it "can add a grammy and return the winner" do 
    expect(macklemore.winner).to eq("Macklemore and Ryan Lewis")
  end

  it "can return an array of all grammys and count it" do 
    expect(Grammy.all.count).to be == 1
  end

  it "can delete a grammy at an index" do
    Grammy.delete_grammy(0)
    expect(Grammy.all.count).to be == 0
  end

  describe "file saving" do 
    before do 
      Grammy.new(2000, "Best Album", "Eminem")
      Grammy.save_all("grammys_test.csv")
    end

    it "can read all the grammys " do 
      Grammy.read_all("grammys_test.csv")
      expect(Grammy.all.count).to eq(2)
      Grammy.clear
    end
  end

  describe "save all" do
    before do
      Grammy.clear
    end

    it "creates a CSV file if none exists" do
      if File.exists? "grammys_test.csv"
        File.delete("grammys_test.csv")
      end
      Grammy.save_all("grammys_test.csv")

      expect(File.exists? "grammys_test.csv").to be_true
    end
  end



end
