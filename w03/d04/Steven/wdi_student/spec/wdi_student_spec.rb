require_relative '../lib/wdi_student.rb'
require 'spec_helper.rb'

describe Student do 
  subject(:student){Student.new("Steve")}

  describe '::new' do

    it "has a name" do
      expect(student.name).to eq("Steve") 
    end

    it "starts with energy" do
      expect(student.energy_level).to eq(100)
    end

    it"starts with no knowledge" do
      expect(student.knowledge).to eq(0) 
    end
  end

  describe "#break" do

    it "makes you not tired" do
      student.code
      student.break
      expect(student.energy_level).to eq(100)
    end

  end

  describe "#code" do

    context "student has coded once" do
      before do
        student.code
        end
        it "reduces energy" do
          student.code
          expect(student.energy_level).to eq(0)
        end

        it "adds knowledge" do
          student.code
          expect(student.knowledge).to eq(1)
        end
      end

    
    it "does not add knowledge when tired" do
      student.code
      student.code
      expect(student.knowledge).to eq(1)
    end

  end


end

