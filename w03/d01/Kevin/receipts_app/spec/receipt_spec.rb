require_relative "../lib/receipt.rb"
require "spec_helper"

describe Receipt do
  let(:receipt){Receipt.new("Macy's","Khaki slacks", 2, "$35.00", "December 21st, 1988")}

  describe "an instance" do
    let(:receipt){Receipt.new("Macy's","Khaki slacks", 2, "$35.00", "December 21st, 1988")}
    # before :each do # You can just type before do and it works the same or a let statment
    #   @receipt_instance = Receipt.new
    # end

    it "has a store" do
      expect(receipt.store).to eq("Macy's")       
    end

    it "has an item name" do
      expect(receipt.item).to eq("Khaki slacks")           
    end

    it "has a quantity" do
      expect(receipt.quantity).to eq(2)            
    end

    it "has a price" do
      expect(receipt.price).to eq("$35.00")        
    end

    it "has the date that it was bought" do
      expect(receipt.date).to eq("December 21st, 1988")      
    end
  end


  describe "#to_s" do

    it "returns a string with all the data" do
      expect(receipt.to_s).to eq "Receipt: Macy's, Khaki slacks, 2, $35.00, December 21st, 1988"
    end
  end

  describe "::clear" do
    it "romvie all instances from the internal list of Recipt (the class)" do
      Receipt.new("Macy's","Khaki slacks", 2, "$35.00", "December 21st, 1988")
      Receipt.clear
      expect(Receipt.all.count).to eq 0
    end
  end

  describe "::all" do
    before do

    end

    it "returns all of the instances" do
      Receipt.clear
      r1 = Receipt.new("Macy's","Khaki slacks", 2, "$35.00", "December 21st, 1988")
      r2 = Receipt.new("JC Penny's","Pink Izod Shirt", 3, "$28.00", "December 22st, 1988")
      receipts = Receipt.all
      expect(receipts).to be_kind_of(Array)
      expect(receipts.count).to eq(2)
      expect(receipts).to include r1
      expect(receipts).to include r2
    end
  end

  describe "::save_all" do
    before do 
      Receipt.clear
      r1 = Receipt.new("Macy's","Khaki slacks", 2, "$35.00", "December 21st, 1988")
      r2 = Receipt.new("JC Penny's","Pink Izod Shirt", 3, "$28.00", "December 22st, 1988")
    end

    it "stores the current receips list as a CSV to the file at FILE_PATH" do
      if File.exists? "receipts_test.csv"
         File.delete("receipts_test.csv")
      end
      Receipt.save_all("receipts_test.csv")

      expect(File.exists? "receipts_test.csv").to be_true
    end

    it "creates a CSV file if none exists" do
      if File.exists? "receipts_test.csv"
         File.delete("receipts_test.csv")
      end
      
      # alright PJ, this one is touh! we will need to
      # read in the contents of our CSV file, and make sure 
      # that they include the data we saved...

      # so, save the file, 
      Receipt.save_all("receipts_test.csv")

      # then open the file and read it in to memory
      f = File.open("receipts_test.csv", "r")
      contents = f.read
      f.close

      # then take the first line
      contents_array = contents.split("\n")
      first_line = contents_array[0]

      # . it's a TSV file! so it should be tab-separated: ie
      # 1: Macy's\tKahki slacks\t3\t$35.00\tDecember 21, 1998
      expect(first_line).to eq "Receipt: Macy's\tKhaki slacks\t2\t$35.00\tDecember 21st, 1988"
    
    end



  end

  describe "::read_all" do 
    before do 
      Receipt.clear
      r1 = Receipt.new("Macy's","Khaki slacks", 2, "$35.00", "December 21st, 1988")
      r2 = Receipt.new("JC Penny's","Pink Izod Shirt", 3, "$28.00", "December 22st, 1988")
      Receipt.save_all("receipts_test.csv")
      Receipt.clear
    end

    it "reads all recipts form our receipt CSV" do
      Receipt.save_all("receipts_test.csv")
      expect(Receipt.all.count).to eq(2)
      # expect(receipts).to include r1
      # expect(receipts).to include r2
    end
  end
end