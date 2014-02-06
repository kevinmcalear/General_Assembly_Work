require 'spec_helper'
require_relative "../lib/main"

describe Bottle do
   subject(:bottle){Bottle.new}

  describe '::new' do
    it "starts empty" do
    expect(bottle.empty?).to be_true
    end
  end

  describe '#fill' do
    it "can be filled" do
      bottle.fill
      expect(bottle.empty?).to be_false
    end
  end

  describe '#drink' do
    it 'becomes empty after you drink' do
      bottle.fill
      bottle.drink
      expect(bottle.empty?).to be_true
    end

    it 'can not be drank if the bottle is empty' do
      expect(bottle.drink).to eq "The bottle is empty"
    end

    it 'should return water when we drink from it and it is also full' do
      bottle.fill
      expect(bottle.drink).to eq("Water")
    end
  end
end

