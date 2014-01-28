require "spec_helper"
require_relative "../lib/receipt"

describe Receipt do
  let(:receipt) { Receipt.new("Macy's", "pants", "2", "$40.00", "January 23, 2014") }

  describe "an instance" do
    # before :each do
    #   @receipt_instance = Receipt.new
    # end
    

    it "has a store" do
      expect( receipt.store ).to eq("Macy's")
    end
    it "has an item name" do
      expect( receipt.item ).to eq("pants")
    end
    it "has a quantity" do
      expect( receipt.quantity ).to eq("2")
    end
    it "has a price" do
      expect( receipt.price ).to eq("$40.00")
    end
    it "has a date bought" do
      expect( receipt.date ).to eq("January 23, 2014")
    end
  end


  describe "#to_s" do
    # let(:receipt) { Receipt.new("Macy's", "pants", "2", "$40.00", "January 23, 2014") }

    it "returns a string with all the data" do
      expect( receipt.to_s ).to eq("Receipt: Macy's, pants, 2, $40.00, January 23, 2014")
    end
  end

  describe "::clear" do
    it "removes all instances from the internal list of Receipt (the class)" do

      Receipt.new("Macy's", "pants", "2", "$40.00", "January 23, 2014")
      Receipt.clear
      expect( Receipt.all.count ).to eq(0)
    end
  end

  describe "::all" do
    # before do

    # end

    it "returns all the instances" do
      Receipt.clear

      r1 = Receipt.new("Macy's", "pants", "2", "$40.00", "January 23, 2014")
      r2 = Receipt.new("Penny's", "jacket", "1", "$50.00", "January 10, 2014")

      # expect( Receipt.all ).to be_a_kind_of(Array)

      receipts = Receipt.all
      # expect( receipts.all.count ).to eq(2)
      expect( receipts ).to include(r1)
      expect( receipts ).to include(r2)
      expect( receipts.count ).to eq(2)
    end
  end

  describe "::read_all" do
    before do
      Receipt.clear
      @r1 = Receipt.new("Macy's", "pants", "2", "$40.00", "January 23, 2014")
      @r2 = Receipt.new("Penny's", "jacket", "1", "$50.00", "January 10, 2014")

      Receipt.save_all("receipts_test.csv")
      Receipt.clear
    end

    it "reads all receipts from our receipt CSV" do
      Receipt.read_all("receipts_test.csv")
      expect(Receipt.all.count).to eq(2)
    end

  end

  describe "::save_all" do
    before do
      Receipt.clear
      @r1 = Receipt.new("Macy's", "pants", "2", "$40.00", "January 23, 2014")
      @r2 = Receipt.new("Penny's", "jacket", "1", "$50.00", "January 10, 2014")
    end

    it "creates a CSV file if none exists" do
      if File.exists? "receipts_test.csv"
        File.delete("receipts_test.csv")
      end
      Receipt.save_all("receipts_test.csv")

      expect( File.exists? "receipts_test.csv" ).to be_true
    end

    it "saves the receipts in the CSV file" do

      # we need to read in the CSV file and make sure it includes the data we saved

      # so save the file,
      Receipt.save_all("receipts_test.csv")

      # then open the file and read it into memory
      f = File.open("receipts_test.csv", "r")
      contents = f.read
      f.close

      # take the first line
      first_line = contents.split("\n")[0]
      # it's a CSV file, so it should be tab-separated, ie:
      # 1: Macy's\tpants\t2\t$40.00\tJanuary 23, 2014

      expect(first_line).to eq("Macy's\tpants\t2\t$40.00\tJanuary 23, 2014")
    end

  end
end

















