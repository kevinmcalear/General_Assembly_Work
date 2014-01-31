require 'spec_helper'
require_relative '../lib/wdi_student'

# add student
describe WDIstudent do
  subject(:student){WDIstudent.new("Barry")}

  describe "::new" do
  #stuents have: name, smarts, tired (T/F)
  #initialize with name, no smarts, energy level full

    it "has a name" do
      expect( student.name).to eq("Barry")
    end

    it "has smarts" do
      expect( student.smarts).to eq 0
    end

    it "has energy" do
      expect( student.energy?).to be_true
    end
  end

# to code or not to code
  #coding increases smarts, lowers energy

  context "#code" do
    #if tired, no extra smarts

    it "checks energy level" do
      student.energy = false
      student.code
      expect( student.smarts).to eq 0
    end

    it "gives smarts" do
      student.code
      expect( student.code).to eq 1
    end

  end

  #breaks increases energy

  describe "#break" do
    it "gives energy" do
      student.code
      student.break
      expect( student.energy?).to be_true
    end

  end

end
