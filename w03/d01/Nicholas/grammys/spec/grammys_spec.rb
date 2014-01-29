require_relative "../lib/grammys"
require "spec_helper"

# Create an app that keeps track of the Grammy winners for various categories over the years.

describe Grammy do

  describe "::list" do
    it "returns all of the instances" do
      Grammy.clear
      lorde = Grammy.new(2014, "Best Song", "Royals by Lorde")
      katy = Grammy.new(2014, "Best New Song", "Roar")
      expect(Grammy.list).to include(lorde, katy)
    end
  end

  describe "::clear" do
      it "removes all instances of Grammy" do
        Grammy.clear
        expect(Grammy.list.count).to eq(0)
      end
    end

    
      before do
        Grammy.new(2014, "Best Song", "Royals by Lorde")
        Grammy.new(2014, "Best New Song", "Roar")
      end

      it "removes all instances of Grammy" do
        Grammy.clear
        expect(Grammy.list.count).to eq(0)
      end
    end
  

  describe "::save_all" do
      before do
        Grammy.clear
        Grammy.new(2014, "Best Song", "Royals by Lorde")
        Grammy.new(2014, "Best New Song", "Roar")
      end

      it "saves the grammys in the CSV file" do
        Grammy.save_info("grammys_test.csv")
        f = File.new("grammys_test.csv","r")
        first_line = f.readline.chomp
        f.close
        expect(first_line).to eq "2014|Best Song|Royals by Lorde"
      end
  
  end

  describe "::read_info" do
      before do
        Grammy.clear
        Grammy.new(2014, "Best Song", "Royals by Lorde")
        Grammy.new(2014, "Best New Song", "Roar")
        Grammy.save_info("grammys_test.csv")
        Grammy.clear
      end

      it "reads all grammys from our grammy CSV" do
        Grammy.read_info("grammys_test.csv")
        expect(Grammy.list.count).to eq(2)
      end
    
  end

  describe "::delete" do
      before do
        Grammy.clear
        @lorde = Grammy.new(2014, "Best Song", "Royals by Lorde")
        @katy = Grammy.new(2014, "Best New Song", "Roar")
        Grammy.save_info("grammys_test.csv")
      end

      it "removes a grammy that we specify by index" do
        Grammy.delete(0)
        expect( Grammy.list ).not_to include(@lorde)
        expect( Grammy.list ).to include(@katy)
      end
    end

  

  describe "#to_s" do
    let(:grammy) { Grammy.new(2014, "Song of the Year", "Brave") }

    it "returns a string with the year, category and winner" do
      expect(grammy.to_s).to eq("Year:2014, Category:Song of the Year, Winner:Brave.")
    end
  end

