require 'rspec'
require_relative "../lib/bottle.rb"

# You can drink from it and get water back unless the bottle is empty. 
# Drinking from the bottle empties it.

describe Bottle do 
  context "It starts empty"do 
    let(:bottle) {Bottle.new}
    it "bottle is created" do 
      expect(bottle.fill?).to be_false
    end 
  end 

  context "An empty bottle exists" do 
    let(:bottle) {Bottle.new}
    it "an empty bottle is filled" do 
      bottle.fill
      expect(bottle.fill?).to be_true
    end 

    it "You cannot drink from an empty bottle" do 
      expect(bottle.drink).to eq("You cannot drink from an empty bottle")
    end 

  end 

  context "The bottle is filled" do
    before do 
      @bottle = Bottle.new
      @bottle.fill
    end  
    
    it "You can drink from a full bottle" do 
      expect(@bottle.drink).to eq("That is a good drink!")
    end 
  
    it "Drinking from a bottle empties it" do 
      @bottle.drink
      expect(@bottle.fill?).to be_false
    end 

  end

end 