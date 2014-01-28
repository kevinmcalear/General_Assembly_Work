require "spec_helper"
require_relative "../lib/grammys"


describe Grammy  do
let(:peewee){Grammy.new("1987", "Action", "Peewee Herman")}
let(:kimk){Grammy.new("2014", "Drama", "Real Talk With Kim K.")}
   describe "a grammy has the following attributes:" do
    
    it "a year" do
      expect(peewee.year).to eq("1987")
    end

    it "a category" do
      expect(peewee.category).to eq("Action")
    end

    it "a winner" do
      expect(peewee.winner).to eq("Peewee Herman")
    end
  end

  describe "::list" do
    it "returns a list of all of the grammy winners" do
      Grammy.clear
      peewee = Grammy.new("1987", "Action", "Peewee Herman")
      kimk = Grammy.new("2014", "Drama", "Real Talk With Kim K.")
      expect(Grammy.list).to include peewee
      expect(Grammy.list.count).to eq 2
    end
  end

  describe "::delete" do
    it "lists all grammy winners by index" do
      Grammy.clear
      old = Grammy.new("2005","Comedy", "Old School")
      peewee = Grammy.new("1987", "Action", "Peewee Herman")
      kimk = Grammy.new("2014", "Drama", "Real Talk With Kim K.")
      expect(Grammy.list).to include old
      expect(Grammy.list.count).to eq 3
      Grammy.delete(0)
      expect(Grammy.list).not_to include old
      expect(Grammy.list.count).to eq 2
    end
  end

  describe "::clear" do
    it "clears out all of the data in the classes array" do
      Grammy.new("2005","Comedy", "Old School")
      Grammy.clear
      expect(Grammy.list.count).to eq 0
    end
  end

  describe "::save_list" do
    it "makes a file if there isn't one yet." do
      if File.exists? "list_test.csv"
         File.delete("list_test.csv")
      end
      Grammy.save_list("list_test.csv")
      expect(File.exists? "list_test.csv").to be_true
    end

    it "saves the receipts in the CSV file" do  
      Grammy.clear
      peewee = Grammy.new("1987", "Action", "Peewee Herman")
      Grammy.save_list("list_test.csv")
      f = File.open("list_test.csv","r")
      complete_file = f.read
      f.close
      grammys = complete_file.gsub "|", ", "
      expect(grammys.chomp).to eq "Peewee Herman, Action, 1987"
    end
  
  end

   describe "::load_list" do
     before do
      Grammy.clear
      peewee = Grammy.new("1987", "Action", "Peewee Herman")
      kimk = Grammy.new("2014", "Drama", "Real Talk With Kim K.")
      old = Grammy.new("2005","Comedy", "Old School")
      Grammy.save_list("list_test.csv")
      Grammy.clear
    end

    it "loads past grammy selections via CSV" do
      Grammy.read_list("list_test.csv")
      expect(Grammy.list.count).to eq(3)
    end
  end

  describe "#print" do
    it "gives back a string of a grammy" do
      old = Grammy.new("2005","Comedy", "Old School")
      expect(old.print).to eq("📀  GRAMMYS SO FAR: Old School, Comedy, 2005 📀")
    end
  end

end