require 'rspec'
require_relative '../lib/makechange.rb'
require 'pry'


    describe "#make_change" do
     it "tells right amount of correct coins" do
     expect(make_change(80)).to eq("3 quarter, 0 dime, 1 nickel, 0 pennie") 
    end
  end