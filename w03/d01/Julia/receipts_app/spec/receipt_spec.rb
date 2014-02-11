require_relative "../lib/receipt.rb"
require "spec_helper"

describe Receipt do 

  describe "an instance" do
    #you can also do before :all – to say, before all the its do X
    # before :each do 
    #   @receipt_instance = Receipt.new
    # end

    #let is a more efficient way than the before block above
    let(:receipt) {Receipt.new("Macy's", "kakhi slacks", 2, "$39", "December 21, 1988")}

    it "has a store" do
      expect(receipt.store).to eq("Macy's")
    end

    it "has an item name" do
      expect(receipt.item).to eq("kakhi slacks")
    end

    it "has a quantity" do
      expect(receipt.quantity).to eq(2)
    end

    it "has a price" do
      expect(receipt.price).to eq("$39")
    end

    it "has the day it was bought" do
      expect(receipt.date).to eq("December 21, 1988")
    end

  end

  #we want the ability to clear out our internal list of objects
  #that we've instantiated

  describe "::clear" do
    it "will remove all instances from the internal list of Receipt (the class)" do
      Receipt.new("Macy's", "kakhi slacks", 2, "$39", "December 21, 1988")
      Receipt.clear
      expect(Receipt.all.count).to eq(0)
    end
  end

  describe "#to_s" do
    let(:receipt) {Receipt.new("Macy's", "kakhi slacks", 2, "$39", "December 21, 1988")}
    it "returns a string with all the data" do
      expect(receipt.to_s).to eq("Receipt: Macy's, kakhi slacks, 2, $39, December 21, 1988")
    end
  end

  describe "::all" do 

    it "returns all of the instances" do 
      Receipt.clear
      r1 = Receipt.new("Macy's", "kakhi slacks", 2, "$39", "December 21, 1988")
      r2 = Receipt.new("Pets Mart", "dog food", 2, "$25", "December 19, 1988")
      receipts = Receipt.all
      #expect(Receipt.all).to be_kind_of(Array)
      expect(receipts).to include(r1)
      expect(receipts).to include(r2)
      expect(receipts.count).to eq(2) 
    end

  end

  describe "::read_all" do
    before do
      Receipt.clear 
      @r1 = Receipt.new("Macy's", "kakhi slacks", 2, "$39", "December 21, 1988")
      @r2 = Receipt.new("Pets Mart", "dog food", 2, "$25", "December 19, 1988")
      Receipt.save_all("receipts_test.csv")
      Receipt.clear
    end

    it "reads all receipts from our receipt CSV" do
      Receipt.read_all("receipts_test.csv")
      # expect(receipts).to include(r1)
      # expect(receipts).to include(r2)
      expect(receipts.count).to eq(2) 
    end

  end

  describe "::save_all" do
    before do
      Receipt.clear 
      @r1 = Receipt.new("Macy's", "kakhi slacks", 2, "$39", "December 21, 1988")
      @r2 = Receipt.new("Pets Mart", "dog food", 2, "$25", "December 19, 1988")
    end
    it "creates a CSV file if none exists" do
      if File.exists? "receipts_test.csv"
        File.delete("receipts_test.csv")
      end
      Receipt.save_all("receipts_test.csv")
      expect(File.exists? "receipts_test.csv").to be_true
    end

    it "saves the receipts in the CSV file" do
      #we will need to read in the contents of our CSV file
      #and make sure that they include the data we saved

      #so, save the file, 
      Receipt.save_all("receipts_test.csv")
      #then open the file and read it into memory
      f = File.open("receipts_test.csv", "r")
      contents = f.read
      f.close

      #then, take the first line

      contents_array = contents.split("\n")
      first_line = contents_array[0]
      #it's a TSV file, so it should be tab-separated i.e.
      # 1: Macy's\tkakhi slacks\t2\t$39\tDecember 21\t1988
      expect(first_line).to eq("Macy's\tkakhi slacks\t2\t$39\tDecember 21\t1988")
    end
  end

  # describe "#save" do
  #   it "saves the receipt to the computer" do

  #   end
  # end

end