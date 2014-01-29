require "spec_helper"
require_relative "../lib/bottle"

describe "Bottle" do
  subject(:bottle) {Bottle.new}
  
  describe '::new' do
    it "starts empty" do
      expect(bottle.water?).to be_false
    end
  end
 
  describe "#fill" do
    it "gives the bottle water" do
      bottle.fill
      expect(bottle.water?).to be_true
    end
  end
  
  describe "#drink" do
    context "when full" do
      before {bottle.fill}
      
      it "removes water" do
        bottle.drink
        expect(bottle.water?).to be_false
      end
      it "returns water" do
        expect(bottle.drink).to eq("Water")
      end

    end
    
    context "when empty" do
      it "can't be drunk" do
        expect(bottle.drink).to eq "The bottle is empty"
      end
    end
  end
end