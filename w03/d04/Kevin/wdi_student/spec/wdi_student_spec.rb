require 'spec_helper'
require_relative '../lib/wdi_student'

describe Student do 
  let(:sparky) {Student.new("Tits McGee")}

  describe "::new" do
    it "has a nickname" do
      expect(sparky.name).to eq("Tits McGee")
    end  

    it "starts out as an idiot" do
      expect(sparky.knowledge).to eq(0)
    end

    it "starts out with energy" do 
      expect(sparky.sleepy?).to be_false
    end
  end

  describe "#code" do
    before do
      sparky.code
    end

    context "when not sleepy" do
      before do

      end
      it "you gain MAD Skillz" do
        expect(sparky.knowledge).to eq(1)
      end

      it "makes you sleepy" do
        expect(sparky.sleepy?).to be_true
      end
    end
    
    context "when sleepy" do
      before do
        sparky.code
      end
      it "you don't learn anything" do
        expect(sparky.knowledge).to eq(1)
      end

      it "you stay sleepy" do
        expect(sparky.sleepy?).to be_true
      end
    end
  end

  describe "#break" do
    before do
      sparky.code
      sparky.break
    end

    context "when not sleepy" do
      before do
        sparky.break
      end

      it "nothing happens" do
        expect(sparky.sleepy?).to be_false
      end
    end
    
    context "when sleepy" do      
      it "gives you energy" do
        expect(sparky.sleepy?).to be_false
      end
    end
  end

  describe "#study" do
    it "lets you code twice" do
      smarty = Student.new("Petie")
      smarty.study
      smarty.code
      smarty.code
      expect(smarty.knowledge).to eq(2)
    end
  end
end