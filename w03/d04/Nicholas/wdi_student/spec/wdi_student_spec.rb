require_relative '../lib/wdi_student'
require 'spec_helper'

describe Student do
  let(:nicholas) { Student.new("Nick") }  
  describe "::new" do 
    it "should create new student"do
    expect( nicholas.name ).to eq("Nick")
    expect( nicholas.knowledge ).to eq(0)
    expect( nicholas.energy ).to eq(100)
  end
end

describe "#code" do
  it "shows that the student has coded" do 
    nicholas.code
    expect( nicholas.energy ).to eq(0)
  end
end

describe "#take_a_break" do 
  it "shows that the student has taken a break" do
    expect( nicholas.energy ).to eq(100)
  end
end

  context "Student has coded once" do 
    before do
      nicholas.code
    end

    it "shows that knowledge is increased" do
      expect( nicholas.wisdom.count ).to eq(1)
    end

      context "Student has coded twice" do 
        before do 
        nicholas.code
      end
      it "should not add wisdom when tired" do 
        expect( nicholas.wisdom.count ).to eq(1)
      end
    end
  end
end