require "spec_helper"
require_relative "../lib/waterbottle"

describe Waterbottle do
  let(:waterbottle) {Waterbottle.new}
  
  describe "::new" do
    it "starts empty" do
      expect(waterbottle.waterbottle).to eq("Empty")
    end
  end

  describe "#fill_it_up" do
    it "gets filled up" do
      expect(waterbottle.fill_it_up).to eq("Full")
    end
    it "still is full" do
      waterbottle.fill_it_up
      expect(waterbottle.waterbottle).to eq("Full")
    end
    it "tells you it's full" do
      waterbottle.fill_it_up
      expect(waterbottle.fill_it_up).to eq("I'm already full!")
    end
  end

  describe "drink_it_up" do
    it "doesn't let you drink if it is empty" do 
      expect(waterbottle.drink_it_up).to eq("I'm empty!")
    end
    it "lets you drink if full" do
      waterbottle.fill_it_up
      expect(waterbottle.drink_it_up).to eq("Empty")
    end
    it "is empty after you drink it up" do
      waterbottle.fill_it_up
      waterbottle.drink_it_up
      expect(waterbottle.waterbottle).to eq("Empty")
    end
  end
end






