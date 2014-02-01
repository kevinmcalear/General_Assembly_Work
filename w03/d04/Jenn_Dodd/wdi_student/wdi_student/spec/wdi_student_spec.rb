require 'spec_helper'
require_relative '../lib/wdi_student'

describe Student do
  subject(:student) { Student.new("Jenn") }

  describe "::new" do
    it "has a name" do
      expect(student.name).to eq("Jenn")
    end
    it "starts with energy" do
      expect(student.tired?).to be_false
    end
    it "starts at 0 knowledge" do
      expect(student.knowledge).to eq(0)
    end
    it "has not planned yet" do
      expect(student.has_planned?).to eq(false)
    end
  end

  describe "#code" do
    before do
      student.code
    end
    it "increases knowledge by 1" do
      expect(student.knowledge).to eq(1)
    end
    it "it tuckers the student out" do
      expect(student.tired?).to be_true
    end 
    it "does not increase knowledge if tired" do
      expect(student.code).to eq(1)
    end
    it "continues to increase knowledge if rested" do
      student.break
      expect(student.code).to eq(2)
    end
  end

  describe "#break" do
    it "restores energy (not tired)" do
      expect(student.tired?).to be_false
    end
    it "encourages student to code if not tired" do
      expect(student.break).to eq("Don't be lazy, get codin!")
    end
  end

  describe "#plan" do
    it "lets you code twice before getting tired" do
      student.plan
      student.code
      expect(student.code).to eq(2)
    end
    it "lets you code ONLY twice before getting tired" do
      student.plan
      student.code
      student.code
      expect(student.code).to eq(2)
    end
    it "does not work if you are already tired" do
      student.code
      student.plan
      expect(student.code).to eq(1)
    end
  end

end




