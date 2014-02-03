require 'rspec'
require_relative '../lib/student'
require 'pry'


describe "Students" do
  let(:student) {Students.new("Zack")}
  describe "::new" do
    it "creates a new student full of energy" do

      expect(student.tired?).to be(false)

    end

    it "has a name" do
      expect(student.name).to match("Zack")
    end

    it "knows nothing" do
      expect(student.know).to be(0)
    end
  end

  describe "#code" do

    it "allows the student to code to increase their knowledge" do
      # binding.pry
      student.code
      expect(student.know).to eq(1)
    end

    it "makes the student tired" do
      student.code
      expect(student.tired?).to be(true)
    end

    it "isn't possible if the student is tired" do
      student.code
      expect(student.code).to match("get some rest")
    end
  end

  describe "#rest" do
    it "lets the student take a break" do
      student.code
      student.rest
      expect(student.code).to eq(2)
    end
  end

  describe "#plan" do
    it "lets the student code twice in a row without a break" do
      student.plan
      student.code
      expect(student.code).to eq(2)
    end
  end
end