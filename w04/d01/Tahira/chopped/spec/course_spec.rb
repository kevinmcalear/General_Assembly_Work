#course_spec.rb
require "spec_helper"

describe Course do
  let(:course) {Course.create}
  it {should have_many(:dishes)}  

  it "should have an ingredient" do
    expect(course.ingredient).to be_kind_of String
  end

  it "should have a round" do 
    expect(course.round).to be_kind_of String
  end
end