require 'spec_helper'
require_relative '../lib/wdi_student'

describe Student do
  subject(:student) {Student.new("drew")}

  describe '::new' do 
    describe "#name" do
      it "initializes a student with a nickname" do
        expect(student.name).to eq("drew")
      end
      it "student starts with 0 knowledge" do
        expect(student.knowledge).to eq(0)
      end
      it "student starts with full energy" do
        expect(student.tired).to be_false
      end
    end
  end

  describe "#code" do
    it "student decides to code" do
      expect(student.code).to be_true
    end
  end

  describe "#code" do
    it "coding increases your knowledge" do
      student.code
      expect(student.knowledge).to eq(1)
    end
  end

  describe "#break" do
    it "student decides to take a break" do
      expect(student.break).to be_false
    end
  end

end