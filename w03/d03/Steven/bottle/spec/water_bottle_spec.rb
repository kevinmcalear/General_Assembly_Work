require_relative "../lib/water_bottle.rb"
require "spec_helper"

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
    context 'when full' do
      before do
        bottle.fill
      end
      it "can be drank" do
        bottle.drink
        expect(bottle.empty?).to be_true
      end

      it "gives us water" do
        expect(bottle.drink).to eq("Water")
      end

    end

    context 'when empty' do

      it "can not be drank if the bottle is empty" do
        expect(bottle.drink).to eq("The bottle is empty")
      end
    end
  end
end







