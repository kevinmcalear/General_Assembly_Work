require_relative "../lib/receipt.rb"
require "spec_helper"

describe Receipt do
  let(:receipt){Receipt.new("Macy's","Khaki slacks",3,"$35.00","December 21, 1998")}

  describe "an instance" do
    it "has a store" do
      expect(receipt.store).to eq("Macy's")
    end
    it "has an item name" do
      expect(receipt.item).to eq("Khaki slacks")
    end
    it "has a quantity" do
      expect(receipt.quantity).to eq(3)
    end
    it "has a price" do
      expect(receipt.price).to eq("$35.00")
    end
    it "has the date that it was bought" do
      expect(receipt.date).to eq("December 21, 1998")
    end
  end

  describe "#to_s" do
    it "returns a string with all the data" do
      expect(receipt.to_s).to eq("Receipt: Macy's, Khaki slacks, 3, $35.00, December 21, 1998")
    end
  end

  describe "::clear" do
    it "removes all instances from the internal list of Receipt (the class)" do
      Receipt.new("Macy's","Khaki slacks",3,"$35.00","December 21, 1998")
      Receipt.clear
      expect(Receipt.all.count).to eq 0
    end
  end

  describe "::all" do
    # before do
    # end

    it "returns all of the instances" do
      Receipt.clear

      r1 = Receipt.new("Macy's","Khaki slacks",3,"$35.00","December 21, 1998")
      r2 = Receipt.new("JC Penny's","Pink Izod shirt",2,"$28.00","December 22, 1998")
      #expect(Receipt.all).to be_kind_of(Array)

      receipts = Receipt.all
      #expect(receipts.count).to eq(2)
      expect(receipts).to include(r1)
      expect(receipts).to include(r2)
      expect(receipts.count).to eq(2)
    end
  end
  
  describe "::read_all" do

  end

  describe "::save_all" do
    it "stores the current receipts list as a CSV to the file at FILE_PATH"
    do
      Receipt.clear


      r1 = Receipt.new("Macy's","Khaki slacks",3,"$35.00","December 21, 1998")
      r2 = Receipt.new("JC Penny's","Pink Izod shirt",2,"$28.00","December 22, 1998")

    if File.exists? "receipts_test"
      File.delete("receipts_test.csv")
    end
      Receipt.save_all("receipts.csv")

      expect(File.exists? "receipts_test.csv").to be_true
    end
  end

end