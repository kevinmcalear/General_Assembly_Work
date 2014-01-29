require_relative "../lib/receipt.rb"
require "spec_helper"

describe "Receipt" do

  describe "an instance" do
    let(:receipt){Receipt.new("Macy's", "Khaki slacks", 3, "$35.00", "December 21, 1988")}

    it "has a store" do      
      expect(receipt.store).to eql("Macy's")
    end
    it "has an item name" do 
      expect(receipt.item).to eql("Khaki slacks")
    end
    it "has a quantity" do
      expect(receipt.quantity).to eql(3)
    end
    it "has a price" do
      expect(receipt.price).to eql("$35.00")
    end
    it "has a date it was bought" do
      expect(receipt.date).to eql("December 21, 1988")
    end
  end

  describe "#to_s" do
    let(:receipt){Receipt.new("Macy's", "Khaki slacks", 3, "$35.00", "December 21, 1988")}
    
    it "returns a string with all the data" do

      expect(receipt.to_s).to match ("Macy's, Khaki slacks, 3, $35.00, December 21, 1988")

    end

  end

end

# Store
# item name
# quantity
# price
# date bought
# create
# list all