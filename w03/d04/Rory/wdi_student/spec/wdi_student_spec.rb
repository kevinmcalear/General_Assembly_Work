require_relative "../lib/wdi_student"
require "spec_helper"

describe Student do
  subject(:steve) { Student.new("Flash Steve") }

  describe "::new" do
    it "has a new" do
      expect( steve.name ).to eq("Flash Steve")
    end

    it "starts with energy" do
      expect( steve.energy_level ).to eq(100)
    end

    it "has no smarts" do
      expect( steve.smarts ).to eq(0)
    end
  end

  describe "#break" do

    it "makes you not tired" do
      steve.code
      steve.break
      expect(steve.energy_level).to eq(100)
    end

  end

  describe "#code" do

    context "student has coded once" do
      before do
        steve.code
      end

      it "reduces energy" do
        expect( steve.energy_level ).to eq(0)
      end

      it "adds smarts" do
        expect( steve.smarts ).to eq(1)
      end

    end
    
    context "student has coded twice" do
      before do
        steve.code
        steve.code
      end

      it "should not add smarts when tired" do
        expect( steve.smarts ).to eq(1)
      end
    end

  end


  #describe "::code" do
    #it "will add knowledge point after coding" do
     # expect(Student.code.knowledge).to_eq(1)
    #end

   # it "will make you tired if you code" do
    #  expect(Student.code.tired).to be_true
    #end
  #end

end