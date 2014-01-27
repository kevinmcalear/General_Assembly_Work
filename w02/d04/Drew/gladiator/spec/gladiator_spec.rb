require 'spec_helper'
require_relative  '../lib/gladiator'


describe "Gladiator" do
  let(:gladiator) { Gladiator.new }

    it "gladiator exists" do
      expect(gladiator).to be_true
    end

  #   describe "#weapon" do
  #     it "gladiator has a weapon" do
  #       expect(glad.weapon).to be_true
  #     end
  #   end

  # describe "#arena" do

  #   it "an arena exists" do 
  #   expect(Arena.new.name).to be_kind_of(String)
  #   end

  #   it "arena name capitalized" do
  #     expect(Arena.new.name).to eq("GA")
  #   end

  #   it "arena can have galdiators" do
  #     expect(Arena.new.gladiators).to be_kind_of(Array)
  #   end

  # end

end