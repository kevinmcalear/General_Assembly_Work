require_relative '../lib/wdi_student'
require 'spec_helper'

describe Student do 
  subject(:student) {Student.new("Tai")}

  describe "::new" do 
    it "has a name" do
      expect(student.name).to eq("Tai")
    end

    it "starts with full energy" do
      expect(student.energy).to be_true
    end

    it "starts with 0 knowledge" do
      expect(student.knowledge).to eq 0
    end
  end

  describe "#break" do
    it "increases energy level" do
      student.break
      expect(student.energy).to be_true
    end

  end

  describe "#code" do
    it "decreases energy level" do
      student.code
      expect(student.energy).to be_false
    end

    it "increased knowledge" do
      student.code
      expect(student.knowledge).to eq(5)
    end

    it "should not add knowledge when tired" do
      student.code
      student.code
      expect(student.knowledge).to eq(5)
    end

  end


end
