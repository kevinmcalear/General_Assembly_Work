require_relative "../lib/receipt.rb"
require "spec_helper"

describe Receipt do

  describe "an instance" do
    let(:receipt){Receipt.new("Macy's","Khaki slacks",3,"$35.00","December 21, 1998")}

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
    let(:receipt){Receipt.new("Macy's","Khaki slacks",3,"$35.00","December 21, 1998")}

    it "returns a string with all the data" do
      expect(receipt.to_s).to eq("Receipt: Macy's, Khaki slacks, 3, $35.00, December 21, 1998")
    end
  end
  

end