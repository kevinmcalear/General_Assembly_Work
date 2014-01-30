require "spec_helper"
require_relative '../lib/bottle'

describe Bottle do 
  subject(:bottle) { WaterBottle.new }

  describe '::new' do
    it "starts empty" do
      expect( bottle.empty? ).to be_true
    end
  end

  desribe '#fill' do
    it "can be filled" do
    bottle.fill
    expect(bottle.empty?).to be_false
    end
  end

describe '#drink' do
  context "when full" do
    before do
      bottle.fill
    end
  
  it "empties the bottle" do
    bottle.drink
    expect( bottle.empty? ).to be_true
  end

  it "gives us water" do
    expect (bottle.drink).to eq("Water")
  end
end

context 'when empty' do

  it "can be drank if bottle is emtpty" do
    expect (bottle.drink).to eq "The bottle is empty"
  end


end


end

