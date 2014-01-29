require_relative "../lib/receipt"
require "spec_helper"

describe Receipt do
  
  describe "#print" do
    it "prints receipt"
  end

  describe "#to_s" do
    let (:receipt) {Receipt.new("Jcrew", "sweater", "1", "25.50", "1/25/2014")}
    it "returns a string with the data" do
      expect (receipt.to_s).to eq "Receipt: Jcrew, sweater, 1, 25.50, Jan 25, 2014"
    end
  end

end