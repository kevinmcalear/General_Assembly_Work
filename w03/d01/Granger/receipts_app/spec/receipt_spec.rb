require_relative "../lib/receipt.rb"
require "spec_helper"

describe Receipt do
     let(:receipt){ receipt_instance = Receipt.new("Macy's", "khaki slacks", 3, "$35.00", "December 21st, 1988") }

  describe "an instance" do


    it "has a store" do

      expect(receipt.store).to eq("Macy's")
    end
    it "has an item name" do

      expect(receipt.item).to eq("khaki slacks")
    end
    it "has a quantity" do

      expect(receipt.quantity).to eq(3)
    end
    it "has a price" do

      expect(receipt.price).to eq("$35.00") 
    end
    it "has the date it was bought" do 

      expect(receipt.date).to eq("December 21st, 1988")
    end
  end

  describe "::clear" do
    it "remove all instances" do
      Receipt.new("Macy's", "khaki slacks", 3, "$35.00", "December 21st, 1988") 
      Receipt.clear
      expect(Receipt.all.count).to eq(0)
    end
  end

  describe "#to_s" do
 

    it "returns a string with all the data" do
      expect(receipt.to_s).to eq("Macy's khaki slacks 3 $35.00 December 21st, 1988")
    end
  end

  describe "::all" do

    before do
      Receipt.clear
      @r1 = Receipt.new("Macy's", "khaki slacks", 3, "$35.00", "December 21st, 1988")
      @r2 = Receipt.new("JCPenny's", "khaki shorts", 2, "$35.00", "December 21st, 1989")
    end

    it "returns all of the instances" do
      # expect(Receipt.all).to be_kind_of(Array)
      expect(Receipt.all.count).to eq(2)
      expect(Receipt.all).to include(@r1)
    end
  end

  describe "::read_all" do
    it "loads the receipts" do
      Receipt.clear

      @r1 = Receipt.new("Macy's", "khaki slacks", 3, "$35.00", "December 21st, 1988")
      @r2 = Receipt.new("JCPenny's", "khaki shorts", 2, "$35.00", "December 21st, 1989")
      Receipt.save_all("receipts_test.csv")

      f = File.open("receipts_test.csv", "r")
      contents = f.read
      f.close

      contents_array = contents.split("\n")
      first_line = contents_array[0]

      expect(first_line).to eq( "Macy's\tkhaki slacks\t3\t$35.00\tDecember 21st, 1988")

    end

  end

  describe "::save_all" do
    it "creates a CSV file if none exists" do
      Receipt.clear

      @r1 = Receipt.new("Macy's", "khaki slacks", 3, "$35.00", "December 21st, 1988")
      @r2 = Receipt.new("JCPenny's", "khaki shorts", 2, "$35.00", "December 21st, 1989")
      if File.exists?("receipts_test.csv")
        File.delete("receipts_test.csv")
      end
      Receipt.save_all("receipts_test.csv")
      expect(File.exists?("receipts_test.csv")).to be_true
    end    
  end

  
end