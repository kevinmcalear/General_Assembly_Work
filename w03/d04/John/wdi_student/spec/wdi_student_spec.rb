require 'spec_helper'
require_relative '../lib/wdi_student'

describe WDIStudent do
  subject (:student) {WDIStudent.new("John")}
  
  describe "::new" do
    it "starts tired" do
      expect(student.tired?).to be_false
    end

    it "starts with 0 knowledge" do
      expect(student.knowledge.count).to eq(0)
    end
  end

  describe "#break" do
    it "makes you not tired" do
      student.break
      expect(student.tired?).to be_false
    end
  end

  describe "#make_tired" do
    it "makes the student tired" do
      student.make_tired
      expect(student.tired?).to be_true
    end
  end

  describe "#code_count" do    
    it "starts at 0" do
      expect(student.code_count).to eq(0)
    end
  end

  describe "#plan" do

    describe "#code" do
      
      context "student has not planned" do
        context "student is not tired" do
          before do
            student.code
            student.code
          end

          it "increases knowledge" do
            expect(student.knowledge.count).to eq(1)
          end

          it "makes the student tired" do
            expect(student.tired?).to be_true
          end
        end

        context "student is tired" do
          before do
            student.make_tired
            student.code
          end

          it "does not increase knowledge" do
            expect(student.knowledge.count).to eq(0)
          end

          it "does not change tiredness" do
            expect(student.tired?).to be_true
          end
        end
      end

      context "student has planned" do

        context "student has not coded at all" do
          before do
            student.plan
            student.code
          end

          it "should increase the code count" do
            expect(student.code_count).to eq(1)
          end
        end
      end

    end
  end
  
end