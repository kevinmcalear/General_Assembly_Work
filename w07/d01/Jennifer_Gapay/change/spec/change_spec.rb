require 'spec_helper'
require_relative '../lib/change'

describe Change do 
  subject(:change) { Change.new }

    describe "#quarter" do
      it "has 25 cents" do
        expect(change.quarter).to eq(0.25)
      end
    end

    describe "#dimes" do
      it "has 10 cents" do
        expect(change.dime).to eq(0.10)        
      end
    end

    describe "#nickels" do
      it "has 5 cents" do
        expect(change.nickel).to eq(0.05)
      end
   end



end