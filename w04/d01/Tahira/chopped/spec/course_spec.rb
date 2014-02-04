#course_spec.rb
require "spec_helper"

describe Course do
  let(:course) {Course.create}
  it {should have_many(:dishes)}  
end