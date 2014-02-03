require 'spec_helper'
require_relative '../lib/wdi_student'

describe WDI_student do
  subject(:student){ WDI_student.new("Jennifer")}

  describe "::name" do
    it "has a name" do
      expect( student.name).to eq("Jennifer")
    end
  end

  it  "starts with energy" do
    expect( student.energy).to eq(100)
  end

  it "has no smarts" do
    expect(student.smarts).to eq(0)
  end

  describe "#break" do

    it "makes you not tired" do
      student.code
      student.break
      expect(student.break).to eq(100)
    end
  end

  describe "#code" do

    context "student has coded once" do
      before do
        student.code
      end
    end

    it "reduces energy" do      
      expect(student.code).to eq(0)
    end

    it "adds smarts" do
      expect( student.smarts).to eq(1)
    end

    context "steve has coded twice" do
      before do
        student.code
        student.code
      end
    end

    it "should not add smarts when tired" do
      expect (student.smarts).to eq(1)

    end
  end

end


