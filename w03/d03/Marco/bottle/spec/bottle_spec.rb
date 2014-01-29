require 'spec_helper'
require_relative '../lib/bottle'

#Check for empty
describe Bottle do
  let(:bottle){Bottle.new}

  describe "::new" do
    it "starts empty" do
      expect( bottle.empty?).to be_true
    end
  end

    describe "#empty?" do
      it "checks to see if there is water in the bottle" do
        expect( bottle.empty?).to be_true
      end
    end

#Fill water bottle
  describe"#fill" do
    it "fills bottle of water" do
      # expect( bottle.fill).to eq(bottle.empty? == true)
      bottle.fill
      expect( bottle.empty?).to be_false
    end
  end

#If bottle has water, (check for water) - you can drink from bottle (emptying it)

describe "#drink" do
  it "checks to see if water is in bottle" do
    expect( bottle.empty?).to be(true || false)
  end

  it "empties the bottle by drinking from it" do
    bottle.fill
    bottle.drink
    expect( bottle.empty?).to be_true
  end

  it "gives an error message if bottle is empty" do
    expect( bottle.drink).to eq("Please fill it!")
  end

  it "returns water when bottle is full" do
    bottle.fill
    expect( bottle.drink).to eq("Delicious water!!")
  end

end

end