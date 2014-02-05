require 'spec_helper'
require_relative '../lib/wdi_student'

describe Student do
  subject(:student){Student.new("Julia")}
  describe "::new" do
    it "a student starts with a name" do
    expect(student.name).to eq("Julia")
    end
  end

  describe "#knowledge" do
    it "a student starts with no knowledge" do
      expect(student.knowledge).to eq(0)
    end
  end

  describe "#energy" do
    it "a student starts full of energy" do
      expect(student.energy).to be_true
    end
  end

  describe "#coding" do
    it "a student gains a knowledge point when they code" do
      student.coding
      expect(student.knowledge).to eq(1)
    end

    it "coding wipes a student's energy" do
      student.coding
      expect(student.energy).to be_false
    end

    it "a student gains no knowledge if they have no energy" do
      student.coding
      student.coding
      expect(student.knowledge).to eq(1)
    end
  end

  describe "#break" do
    it "a student gets energy after a break" do
      student.break
      expect(student.energy).to be_true
    end
  end

end