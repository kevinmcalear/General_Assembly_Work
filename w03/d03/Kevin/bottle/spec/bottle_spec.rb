require "spec_helper"
require_relative "../lib/bottle"

describe Bottle do
  let(:bottle) {Bottle.new}
  describe "::new" do
    it "is a bottle" do 
      expect(bottle).to be_a Bottle
    end  
    it "starts out empty" do
      expect(bottle.state).to eq(0)
    end
  end
  
  describe "#drink" do
   it "drinks the water in the bottle in three drinks" do
    expect(bottle.state).to eq(0)
    expect(bottle.fill).not_to raise_error
    expect(bottle.state).to eq(3)
    expect(bottle.drink).not_to raise_error
    expect(bottle.state).to eq(2)
    expect(bottle.drink).not_to raise_error
    expect(bottle.state).to eq(1)
    expect(bottle.drink).not_to raise_error
    expect(bottle.state).to eq(0)
  end
  it "can never be less than empty." do
    expect(bottle.state).to eq(0)
    expect(bottle.drink).not_to raise_error
    expect(bottle.state).to eq(0)
  end
end

describe "#fill" do
  it "fills the bottle back up" do
    expect(bottle.state).to eq(0)
    expect(bottle.fill).not_to raise_error
    expect(bottle.state).to eq(3)
  end

  it "can only be filled if the bottle is empty" do
    bottle2 = Bottle.new
    bottle2.fill
    bottle2.drink
    expect(bottle2.state).to eq(2)
    bottle2.fill
    expect(bottle2.state).to eq(2)
  end
end

end