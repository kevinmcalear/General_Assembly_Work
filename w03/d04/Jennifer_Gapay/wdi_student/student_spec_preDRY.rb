require 'spec_helper'
require_relative '../lib/wdi_student'

describe WDI_student do

describe "::name" do
  it "has a name" do
    student = WDI_student.new("Jennifer")
    expect( student.name).to eq("Jennifer")
  end
end

  it  "starts with energy" do
      student = WDI_student.new("Jennifer")
      expect( student.energy).to eq(100)
  end

  it "has no smarts" do
      student = WDI_student.new("Jennifer")
      expect(student.smarts).to eq(0)
  end

describe "#break" do

  it "makes you not tired" do
        student = WDI_student.new("Jennifer")
        jennifer.break
        expect(student.break).to eq(100)
  end
end

describe "#code" do

  it "reduces energy" do      
    student = WDI_student.new("Jennifer")
    student.code
    expect(student.code).to eq(0)
  end

  it "adds smarts" do
    student = WDI_student.new("Jennifer")
    steve.code
    expect( student.smarts).to eq(1)
  end

  it "should not add smarts when tired" do
    student = WDI_student.new("Jennifer")
    steve.code
    steve.code
    expect (student.smarts).to eq(1)

  end
end

end


