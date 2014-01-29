require_relative '../lib/bottle'
require 'spec_helper'

describe Bottle do
  context "Bottle is empty" do
    describe "::new" do 
      let(:dasani) { Bottle.new }
      it "should show that the bottle is empty when created" do
        expect( dasani.state ).to eq("empty")
      end
    end
  end

  context "Bottle is empty" do
    describe "#full" do 
      let(:aquafina) { Bottle.new }
      it "shoud fill the bottle" do 
        expect( aquafina.full ).to eq("full")
      end
    end
  end

  context "Bottle is full" do
    describe "#drink" do 
      context "Bottle has only been sipped once" do
        let(:bottle) { Bottle.new }
        before do 
          bottle.full
          bottle.drink
        end

        it "should show it has been sipped once" do
          expect( bottle.sips.count ).to eq(1)
        end
      end

      context "bottle has been sipped 3 times"
      let(:bottle) { Bottle.new }
      before do
        bottle.full
        bottle.drink
        bottle.drink
        bottle.drink
      end
      it "should show empty when sipped 3 times" do
        expect( bottle.state ).to eq("empty")
      end
    end
  end
end
