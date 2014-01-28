require_relative "../lib/grammys.rb"
require "spec_helper"

describe Grammy do
  let(:cowboy) {Grammy.new(2013, "country", "cowboy")}

  describe "an instance" do
    it "has a year" do
      expect(cowboy.year).to eq(2013)
    end
    it "has a category" do
      expect(cowboy.category).to eq("country")
    end
    it "has a winner" do
      expect(cowboy.winner).to eq("Cowboy")
    end
  end

  describe "::clear" do
    cowboy = Grammy.new(2013, "country", "cowboy")
    mumford = Grammy.new(2012, "newgrass", "Mumford")
    rhiana = Grammy.new(2012, "pop", "Rhiana")
    it "cleans out the entire list" do
      Grammy.clear
      expect(Grammy.list.count).to eq(0)
    end
  end

  describe "::list" do
    it "has a list of grammys" do
      Grammy.clear
      mumford = Grammy.new(2012, "newgrass", "Mumford")
      rhiana = Grammy.new(2012, "pop", "Rhiana")
      expect(Grammy.list).to include (mumford)
      expect(Grammy.list).to include (rhiana)
      expect(Grammy.list.count).to eq(2)
    end
  end

  describe "#to_s" do
    it "returns a string with all the data" do
      expect(cowboy.to_s).to eq("Cowboy won country in 2013.")
    end
  end


  describe "::delete_grammy" do
    it "deletes a grammy by index" do
      Grammy.clear
      mumford = Grammy.new(2012, "newgrass", "Mumford")
      rhiana = Grammy.new(2012, "pop", "Rhiana")
      expect(Grammy.list.count).to eq(2)
      Grammy.delete_grammy(1)
      expect(Grammy.list).to include (mumford)
      expect(Grammy.list.count).to eq(1)
      Grammy.delete_grammy(0)
      expect(Grammy.list.count).to eq(0)
    end
  end

  describe "::save_list" do
    it "creates a csv file if it does not exist" do
      if File.exists? "grammy_test.csv"
        File.delete "grammy_test.csv"
      end
      Grammy.save_list("grammy_test.csv")
      expect(File.exists? "grammy_test.csv").to be_true
    end

    it "saves the list to the file" do
      #clean slate
      Grammy.clear
      #make some grammys
      Grammy.new(2012, "newgrass", "Mumford")
      Grammy.new(2012, "pop", "Rhiana")
      #make the file
      Grammy.save_list("grammy_test.csv")

      #now we need to see if anything actually happened.
      #open file
      f = File.open("grammy_test.csv", "r")

      #read the file and save it to memory
      da_list = f.read
      #close it!
      f.close

      #chop em up by line
      grammy_line = da_list.split("\n")

      #find the first line
      expect(grammy_line[0]).to eq("2012 | newgrass | Mumford")
    end
  end

  describe "::read_list" do
    before do
      #clean slate
      Grammy.clear
      #make some grammys
      Grammy.new(2012, "newgrass", "Mumford")
      Grammy.new(2012, "pop", "Rhiana")
      #make the file to read from
      Grammy.save_list("grammy_test.csv")
    end

    it "reads our list from the csv file" do 
      Grammy.clear
      #call our read method
      Grammy.read_list("grammy_test.csv")
      expect(Grammy.list.count).to eq(2)
    end
  end
end
























