require_relative '../lib/student'
require  'spec_helper'

describe "Student" do
  subject (:student) {Student.new("bob")}

  describe "::new" do
    it "has a name" do
      expect(student.name).to eq "bob"
    end

    it "starts with energy" do
      expect(student.energy).to be_true
    end

    it "starts with no knowledge" do
      expect(student.knowledge).to eq 0
    end
  end

  describe "#code" do
    context "student codes once" do
      before {student.code}
      it "increase knowledge" do
        expect(student.knowledge).to eq 1
      end

      it "drains energy" do
        expect(student.energy).to be_false
      end
      
      it "does not increase knowledge without energy" do
        expect(student.code).to eq "take a break"
      end
    end
  end

  describe '#break' do
    context "student is tired" do
      before {student.code}
      it "gives student energy" do
        student.code
        expect(student.energy).to be_true
      end 
    end
  end

end