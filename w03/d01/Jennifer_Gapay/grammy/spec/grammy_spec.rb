require_relative "../lib/grammy"
require "spec_helper"

describe Grammy do 
  let(:grammy){Grammy.new("Adele", "2012", "Record of the Year", "Yes")}

describe "grammy details" do

  it "has a name" do
    expect(grammy.name).to eq("Adele")
  end
  it "has year nominated" do
    expect(grammy.year).to eq("2012")
  end
  it "has a category" do
    expect(grammy.category).to eq("Record of the Year")
  end
  it "has a winner" do
    expect(grammy.winner).to eq("Yes")
  end

 describe "#to_s" do
    it "returns a string with all grammy info" do
      expect(grammy.to_s).to eq("Grammy Nominees: Adele, 2012, Record of the Year, Yes")
    end
  end
  describe "::all" do

    it "returns all of the instances" do
      Grammy.clear

      g1 = Grammy.new("Adele", "2012", "Record of the Year", "Yes")
      g2 = Grammy.new("Daft Punk", "2014", "Album of the Year", "Yes")

      grammy = Grammy.all
      expect(grammy).to include(g1)
      expect(grammy).to include(g2)
      expect(grammy.count).to eq(2)
    end
  end

  describe "::clear" do
    it "removes all instances from the internal list of Grammy (the class)" do
      Grammy.new("Adele", "2012", "Record of the Year", "Yes")
      Grammy.clear
      expect(Grammy.all.count).to eq 0
    end
  end

describe "::read_all" do
    before do
      Grammy.clear

      @g1 = Grammy.new("Adele","2012","Record of the Year","Yes")
      @g2 = Grammy.new("Daft Punk","2014","Album of the Year","Yes")

      Grammy.save_all("grammy_test.csv")
      Grammy.clear
    end

    it "reads all grammys from our grammy CSV" do
      Grammy.read_all("grammy_test.csv")
      expect(Grammy.all.count).to eq(2)
    end
  end


end
end

  
