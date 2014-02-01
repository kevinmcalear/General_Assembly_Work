require 'spec_helper'
require_relative '../lib/wdi_student'

describe Student do 
  let(:isaac) { Student.new("Isaac") }

  describe "#name method" do 
    it "a student has a name" do 
      expect(isaac.name).to eq("Isaac")
    end
  end

  describe "#knowledge method" do 
    it "new student starts out with no knowledge" do 
      expect(Student.new("Paul").knowledge).to eq(0)
    end
  end

  describe "#tired? method" do 
    it "new student starts out not tired" do 
      expect(Student.new("Lucy").tired?).to eq(false)
    end
  end

  describe "#code method" do 
    let(:sandy) { Student.new("Sandy") }
    before do 
      sandy.code
    end
    it "increases a new student's knowledge" do 
      expect(sandy.knowledge).to eq(1)
    end
    it "makes the student tired" do 
      expect(sandy.tired?).to eq(true)
    end
  end

  describe "#take_break method" do 
    it "makes a student not tired anymore" do 
      bob = Student.new("Bob")
      bob.code
      bob.take_break
      expect(bob.tired?).to eq(false)
    end
  end


end






