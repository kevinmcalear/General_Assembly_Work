require'spec_helper'
require_relative'../lib/water_bottle'

describe Bottle do
  let(:bottle){Bottle.new("empty")}

  context "when the bottle is empty" do
    it "can be filled" do
      if bottle.state == "empty"
        bottle.fillup
      end
    expect(bottle.state).to eq("full")
    end
  end

  context "when the bottle is full" do
    it "can be drunk from" do
      bottle.fillup
      expect(bottle.drink).to eq("empty")
    end
  end  
end