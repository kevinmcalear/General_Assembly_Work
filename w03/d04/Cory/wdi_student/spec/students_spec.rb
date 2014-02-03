require_relative "../lib/students.rb"
require "spec_helper"


describe Student do
subject(:student) {Student.new("Buddy")}

  describe "::new" do #class method
    it "has a nickname"  do
      expect(student.nickname).to eq("Buddy")
    end
    it "has amount of knowledge" do 
      expect(student.knowledge).to eq(0)
    end
    it "has lots of energy" do
      expect(student.energy).to eq(100)
    end
  end

  describe "#break" do
    it "makes you not tired" do 
     student.code
     student.break
     expect(student.energy).to eq(100)
    end
  end

  describe "#code" do 
    it "will add knowledge" do
      student.code
      expect(student.knowledge).to eq(1)
    end
    it "reduces energy" do
      student.code
      expect(student.energy).to eq(0)
    end
    it "should not add knowledge when tired" do
      student.code
      student.code
      expect(student.knowledge).to eq(1)
    end
  end

end