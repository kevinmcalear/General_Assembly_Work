require_relative "../lib/receipt.rb"
require "spec_helper"

describe Receipt do
<<<<<<< HEAD
  subject(:receipt){Receipt.new("Macy's","Khaki slacks",3,"$35.00","December 21, 1998")}

  describe "an instance" do

=======
  let(:receipt){Receipt.new("Macy's","Khaki slacks",3,"$35.00","December 21, 1998")}

  describe "an instance" do
>>>>>>> b9203e2ed20746229c9c50a12ce5422bd08cd437
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
<<<<<<< HEAD

=======
>>>>>>> b9203e2ed20746229c9c50a12ce5422bd08cd437
    it "returns a string with all the data" do
      expect(receipt.to_s).to eq("Macy's\tKhaki slacks\t3\t$35.00\tDecember 21, 1998")
    end
  end

<<<<<<< HEAD
describe "::clear" do

  it "will remove all instances from the internal object array"do
    receipt = Receipt.new("Macy's","Khaki slacks",3,"$35.00","December 21, 1998")
    Receipt.clear
    expect(Receipt.all.count).to eq 0
  end

end


  describe"::all" do

      it "returns all instances of the Receipt class"do
        Receipt.clear
        r1 = Receipt.new("Macy's","Khaki slacks",3,"$35.00","December 21, 1998")
        r2 = Receipt.new("JCrew","shveter",1,"$35.00","December 22, 1998")
        receipts = Receipt.all
        expect( Receipt.all.count).to eq(2)
        expect(receipts).to include(r1)
      end

  end

  describe ":read_all" do
    it "reads file"
  end

describe "::save_all" do
=======
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
    before do
      Receipt.clear

      @r1 = Receipt.new("Macy's","Khaki slacks",3,"$35.00","December 21, 1998")
      @r2 = Receipt.new("JC Penny's","Pink Izod shirt",2,"$28.00","December 22, 1998")

      Receipt.save_all("receipts_test.csv")
      Receipt.clear
    end

    it "reads all receipts from our receipt CSV" do
      Receipt.read_all("receipts_test.csv")
      # expect(receipts).to include(@r1)
      # expect(receipts).to include(@r2)
      expect(Receipt.all.count).to eq(2)
    end
  end

  describe "::save_all" do
>>>>>>> b9203e2ed20746229c9c50a12ce5422bd08cd437
    before do
      Receipt.clear

      @r1 = Receipt.new("Macy's","Khaki slacks",3,"$35.00","December 21, 1998")
      @r2 = Receipt.new("JC Penny's","Pink Izod shirt",2,"$28.00","December 22, 1998")
    end

    it "creates a CSV file if none exists" do
      if File.exists? "receipts_test.csv"
        File.delete("receipts_test.csv")
      end
      Receipt.save_all("receipts_test.csv")

      expect(File.exists? "receipts_test.csv").to be_true
    end

    it "saves the receipts in the CSV file" do
      # alright PJ, this one is tough! we will need to
      # read in the contents of our CSV file, and make sure
      # that they include the data we saved...

      # so, save the file,
      Receipt.save_all("receipts_test.csv")

      # then open the file and read it in to memory
      f = File.open("receipts_test.csv","r")
      contents = f.read
      f.close

      # then take the first line
      contents_array = contents.split("\n")
      first_line = contents_array[0]

      # it's a TSV file! so it should be tab-separated: ie
      # 1: Macy's\tKhaki slacks\t3\t$35.00\tDecember 21, 1998
<<<<<<< HEAD
=======

>>>>>>> b9203e2ed20746229c9c50a12ce5422bd08cd437
      expect(first_line).to eq "Macy's\tKhaki slacks\t3\t$35.00\tDecember 21, 1998"
    end
  end

<<<<<<< HEAD
=======







  
>>>>>>> b9203e2ed20746229c9c50a12ce5422bd08cd437

end