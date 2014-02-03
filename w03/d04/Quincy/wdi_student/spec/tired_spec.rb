require 'rspec'
require_relative '../lib/main'

describe Student do

  describe "::new" do
    it "has a name" do
      steve = Student.new("Flash Steve")
      expect( steve.name ).to eq("Flash Steve")
    end

    it "starts with energy" do
      steve = Student.new("Flash Steve")
      expect( steve.energy_level ).to eq("Flash Steve").to eq(100)
    end

    it "has no smarts" do
      steve = Student.new("Flash Steve")
      expect( steve.smarts ).to eq("Flash Steve").to eq(0)
    end
  end

  describe "#code" do

    it "reduces energy" do
      steve = Student.new("Flash Steve")
      steve.smarts
      steve.code

end
