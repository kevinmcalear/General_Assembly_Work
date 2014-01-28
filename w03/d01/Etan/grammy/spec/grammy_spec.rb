require_relative "../lib/grammy.rb"
require "spec_helper"

describe Grammy do 
  let (:grammy){Grammy.new(2014, "Country", "Kacey Musgraves - Same Trailer Different Park")}
  describe "an instance of this class" do
    
    it "has a year that it was created" do
      expect(grammy.year).to eq(2014)
    end

    it "has a musical category" do
      expect(grammy.category).to eq("Country")
    end

    it "has an artist and album title" do
      expect(grammy.name).to eq("Kacey Musgraves - Same Trailer Different Park")
    end

    it "returns the entire grammy entry as a string" do
      expect(grammy.to_s).to eq("Kacey Musgraves - Same Trailer Different Park won the GRAMMY for Best Country Album that was released in 2014.")
    end

  end

describe "Moving_Grammys_Around" do
  Grammy.delete
  let (:grammy1){Grammy.new(2014, "Country", "Kacey Musgraves - Same Trailer Different Park")}
  let (:grammy2){Grammy.new(2014, "Alternative", "Vampire Weekend - Modern Vampires of the City")}
  describe "adding a grammy to the grammy list and clearing the list" do

    it "can add grammy winners" do

      grammy_list = Grammy.all
      expect(grammy_list).to include(:grammy1)
      expect(grammy_list).to include(:grammy2)
      expect(grammy_list.count).to eq(2)
    end
  end
end

end