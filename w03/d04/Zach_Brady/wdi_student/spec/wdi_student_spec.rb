require 'spec_helper'
require_relative '../lib/wdi_student.rb'

# Q: OK to put one definite let statement at the top of my program defining variables? 
#A: put it right after 'describe Class_Name do', and it's subject, not let

# class name should not be written in quaotation marks
describe WDI_Student do 
  # use subject not let to get the whole document -- let is used for creating instances of object that aren't specifically the object we are testing
  subject(:student) {WDI_Student.new("Jonas")} 

  ## Q: better to write ::new ???
  ## A: more semantical because you write Class.new when you initialize
  describe "::new" do 
    it "has a nickname" do
      expect( student.nickname ).to eq("Jonas")
    end
    it "has a measure of knowledge (or the lack thereof)" do
      expect( student.amount_of_knowledge ).to eq(0)
    end

    it "starts out not at all tired" do
      expect( student.tired? ).to be_false
    end
  end

  ##  is it better to write context "a student can code? Should I indent here and describe all the things coding does within this describe? Why does not to raise error always return problems?"

  describe "#code" do

    context "student has coded once" do
      before do
        student.code
      end

      it "increases a student's knowledge" do
        expect( student.amount_of_knowledge > 0).to be_true
      end

      it "makes students tired" do
        expect( student.tired? ).to be_true
      end

      it "does not increase a students knowledge if he or she is already tired" do
        expect( student.tired? ).to be_true
        gained_knowledge = student.amount_of_knowledge
        student.code
        expect( student.amount_of_knowledge ).to eq(gained_knowledge)
      end
    end
  end

  describe "#take_a_break" do
    it "makes a student not tired" do
      student.code
      expect( student.tired? ).to be_true
      student.take_a_break
      expect( student.tired? ).to be_false
    end

  end
end


